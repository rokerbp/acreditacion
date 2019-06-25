<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FactorType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class, array('label' => 'Nombre del factor', 'required' => true))
                ->add('descripcion')
                ->add('ponderacion')
                ->add('justificacion', TextType::class, array('label' => 'Justificación de la ponderación', 'required' => false))
                ->add('valor', NumberType::class,['invalid_message' => 'La calificación no debe ser mayor que la ponderación'], array('label' => 'Valor obtenido en evaluación', 'required' => false))
                //->add('porcentaje')
                //->add('modelo')
            ;
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Factor'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_factor';
    }


}
