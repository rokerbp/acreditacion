<?php
// src/AppBundle/Form/EstudianteType.php
namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class EstudianteType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nombre', TextType::class, array('label' => 'Nombre y Apellido', 'required' => true))
            ->add('identificacion', TextType::class, array('required' => true))
            ->add('anioingreso', DateType::class, array('widget' => 'single_text', 'label' => 'Año de Ingreso', 'years' => range(2010,2018)))
            //->add('estado', TextType::class)
            ->add('estado', ChoiceType::class, array('choices' => array('Activo' => 'Activo', 'Inactivo' => 'Inactivo', 'Graduado'=>'Graduado', 'Retirado'=>'Retirado'), 'required' => true))
            ->add('aniograduacion', DateType::class, array('label' => 'Año de Graduacion', 'required' => false))
            ->add('ciudadorigen', TextType::class, array('required' => true))
            ->add('correo', EmailType::class, array('required' => false))
            ->add('telefono', TextType::class, array('required' => false))
            ->add('ciudadactual', TextType::class, array('required' => false))
            ->add('salvar', SubmitType::class, array('label' => 'Nuevo Estudiante'))
        ;
    }
}