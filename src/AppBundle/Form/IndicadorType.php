<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Doctrine\ORM\EntityRepository;

class IndicadorType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class,
                    [
                        'label'=>'Nombre del indicador'
                    ])
                ->add('descripcion', TextareaType::class, 
                    [
                        'required'=>false,
                        'attr' => array('cols' => '60', 'rows' => '3'),
                        'label'=>'Observaciones sobre las fuentes de información'
                    ])
                ->add('recursos', EntityType::class,
                [
                    'class'=>'AppBundle:Recurso',
                    'choice_label'=>'nombre',
                    'label'=>'Seleccione los Criterios de Calidad para la calificación de la característica',
                    'placeholder'=>'Seleccione un Recurso',
                    'multiple' => true,
                    'expanded' => false,
                ]);
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Indicador'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_indicador';
    }


}
