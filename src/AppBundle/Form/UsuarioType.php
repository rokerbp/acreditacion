<?php
// src/AppBundle/Form/UsuarioType.php
namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class UsuarioType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email', EmailType::class, array('required'=>true))
            ->add('plainPassword', RepeatedType::class, array(
                'type' => PasswordType::class,
                'first_options'  => array('label' => 'Contraseña'),
                'second_options' => array('label' => 'Repetir Contraseña'), 'required'=>true
            ))
            ->add('roles', ChoiceType::class, array('multiple'=>true, 'required'=>true, 'expanded'=>false,
                'choices' => 
                [
                    'Administrador' => 'ROLE_ADMIN',
                    'Coordinador de Programa' => 'ROLE_ADMIN_PROGRAMA',
                    'Coordinador de Autoevaluacion' => 'ROLE_ADMIN_AUTOEVAL',
                    'Monitor'=>'ROLE_MONITOR',
                    'Profesor' => 'ROLE_PROFESOR',
                    'Egresado' => 'ROLE_EGRESADO',
                    'Estudiante'=>'ROLE_ESTUDIANTE',
                    'Empleado' => 'ROLE_EMPLEADO'
                ]))
            //->add('roles', ChoiceType::class, array('multiple'=>true,'choices' => array('Administrador' => '["ROLE_ADMIN"]', 'Profesor' => '["ROLE_PROFESOR"]', 'Empleado'=>'["ROLE_EMPLEADO"]', 'Monitor'=>'["ROLE_MONITOR"]'), 'required' => true))
            ->add('salvar', SubmitType::class, array('label' => 'Registrar'))
        ;
    }
}