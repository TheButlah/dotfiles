use color_eyre::eyre::WrapErr;

// Eventually, I will start to use this script to perform installation of anything that isn't
// trivial in install.sh
#[pollster::main]
async fn main() -> color_eyre::Result<()> {
	color_eyre::install()?;
	let _bd = xdg::BaseDirectories::new().wrap_err("Could not get xdg directories")?;

	Ok(())
}
