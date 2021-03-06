<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class CaracteristicaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre')
                ->add('descripcion')
                ->add('ponderacion')
                ->add('valor')
                ->add('criterio', EntityType::class,
                [
                    'class'=>'AppBundle:Criterio',
                    'choice_label'=>'nombre',
                    'label'=>'Seleccione los Criterios de Calidad para la calificación de la característica',
                    'placeholder'=>'Seleccione un Principio',
                    'multiple' => true,
                    'expanded' => true,
                ]);

    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Caracteristica'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_caracteristica';
    }


}
