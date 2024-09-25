from textual.app import App, ComposeResult
from textual.widgets import Header, Footer, Static, Button
from textual.containers import Container, Vertical, Horizontal
from textual.events import Click
import subprocess

class LinuxAdministrador(App):
    
    CSS_PATH = "styles.tcss"

    BINDINGS = [
        ("d", "toggle_dark", "Alternar modo oscuro"),
        ("q", "quit", "Salir de la aplicación"),
        ("z", "ctrl+z", "Suspender proceso")
    ]

    def compose(self) -> ComposeResult:
        # Contenedor para los textos adicionales
        text_container = Vertical(
            Static("Bienvenido", id="texto_adicional_1"),
            Static("Tesis IACC", id="texto_adicional_2"),
            classes="text-container"  # Aplica clases CSS específicas si es necesario
        )

        # Contenedor para los botones
        buttons_container = Horizontal(
            Button("Update", classes="update-upgrade", id="btn_update"),  # Añade ID único
            Button("Upgrade", classes="update-upgrade", id="btn_upgrade"),  # Añade ID único
            classes="buttons-container"  # Aplica clases CSS específicas si es necesario
        )

        # Contenedor para el mensaje de salida
        output_container = Static("Puedes hacer Update o Upgrade Aquí!", id="titulo-update-upgrade")  # Widget para mostrar el mensaje

        yield Header()
        yield Footer()
        yield Container(
            Vertical(  # Organiza el contenedor de textos, el mensaje de salida y los botones en vertical
                text_container,
                output_container,
                buttons_container
            ),
            classes="main-container"  # Aplica una clase CSS si es necesario
        )

    def action_toggle_dark(self) -> None:
        """Acción para alternar el modo oscuro."""
        self.dark = not self.dark
        self.refresh()  # Refresca la aplicación para aplicar el modo oscuro

    def action_quit(self) -> None:
        """Acción para salir de la aplicación."""
        self.exit()  # Salir de la aplicación

    async def on_button_pressed(self, event: Button.Pressed) -> None:
        """Gestiona los eventos de clic en los botones."""
        button_id = event.button.id  # Obtén el ID del botón presionado
        if button_id == "btn_update":
            await self.run_update()
        elif button_id == "btn_upgrade":
            await self.run_upgrade()

    
    
    
    
    async def run_update(self) -> None:
        """Simula la ejecución del comando 'update'."""
        self.output.update("Ejecutando Update...")  # Muestra el mensaje en la app
        try:
            # Ejecutar el comando `sudo apt update`
            result = subprocess.run(['sudo', 'apt', 'update'], check=True, capture_output=True, text=True)
            # Actualizar la salida con el resultado
            self.output.update(result.stdout)
        except subprocess.CalledProcessError as e:
            # En caso de error, mostrar el mensaje de error
            self.output.update(f"Error al ejecutar el comando: {e.stderr}")



    async def run_upgrade(self) -> None:
        """Simula la ejecución del comando 'upgrade'."""
        self.output.update("Ejecutando Upgrade...")  # Muestra el mensaje en la app
        try:
            # Ejecutar el comando `sudo apt upgrade -y`
            result = subprocess.run(['sudo', 'apt', 'upgrade', '-y'], check=True, capture_output=True, text=True)
            # Actualizar la salida con el resultado
            self.output.update(result.stdout)
        except subprocess.CalledProcessError as e:
            # En caso de error, mostrar el mensaje de error
            self.output.update(f"Error al ejecutar el comando: {e.stderr}")

if __name__ == "__main__":
    app = LinuxAdministrador()
    app.run()
