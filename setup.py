from setuptools import setup, Extension
import pybind11

setup(
    name="gini",
    version="0.1",
    ext_modules=[
        Extension(
            "gini",
            ["bindings.cpp", "gini.cpp"],  # Добавлен gini.cpp
            include_dirs=[pybind11.get_include()],
            language="c++",
        )
    ],
    install_requires=["pybind11"],
)
