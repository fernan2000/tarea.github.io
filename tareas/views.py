from django.shortcuts import render, redirect
from .models import Tarea

def lista_tareas(request):
    tareas = Tarea.objects.all()
    
    if request.method == 'POST':
        titulo = request.POST.get('titulo')
        if titulo:
            Tarea.objects.create(titulo=titulo)
        return redirect('/')
    
    return render(request, 'lista.html', {'tareas': tareas})

def completar_tarea(request, id):
    tarea = Tarea.objects.get(id=id)
    tarea.completada = not tarea.completada
    tarea.save()
    return redirect('/')

def eliminar_tarea(request, id):
    Tarea.objects.get(id=id).delete()
    return redirect('/')