Working with Jupyter Notebook files on GitHub
https://help.github.com/articles/working-with-jupyter-notebook-files-on-github/

When you add Jupyter Notebook or IPython Notebook files with a .ipynb extension on GitHub, 
they will render as static HTML files in your repository.

The interactive features of the notebook, such as custom JavaScript plots, 
will not work in your repository on GitHub. For an example, see 
<a href="https://github.com/bokeh/bokeh-notebooks/blob/master/tutorial/06%20-%20Linking%20and%20Interactions.ipynb">
Linking and Interactions.ipynb</a>.

To view your Jupyter notebook with JavaScript content rendered or to share your notebook 
files with others you can use 
<a href="https://nbviewer.jupyter.org/" >
nbviewer. </a>
For an example, see 
<a href="https://nbviewer.jupyter.org/github/bokeh/bokeh-notebooks/blob/master/tutorial/06%20-%20Linking%20and%20Interactions.ipynb" >
Linking and Interactions.ipynb rendered on nbviewer.</a>

To view a fully interactive version of your Jupyter Notebook, you can set up a notebook server locally.
For more information, see 
<a href="http://jupyter.readthedocs.io/en/latest/index.html" >Jupyter's official documentation.</a>

Troubleshooting
If you're having trouble rendering Jupyter Notebook files in static HTML, 
you can convert the file locally on the command line by using the 
<a href="https://github.com/jupyter/nbconvert" >
<kbd>nbconvert</kbd> command</a>:

jupyter nbconvert --to html NOTEBOOK-NAME.ipynb
Further reading
<a href="https://github.com/jupyter/jupyter_notebook" >
Jupyter Notebook's GitHub repository </a>
<a href="https://github.com/jupyter/jupyter_notebook" >
Gallery of Jupyter Notebooks </a>	
