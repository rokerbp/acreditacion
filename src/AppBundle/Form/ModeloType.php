<?php

namespace AppBundle\Form;

use AppBundle\Entity\Factor;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ModeloType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class,
                    [
                        'label'=>'Nombre del modelo'
                    ])
                ->add('programa', EntityType::class,
                [
                    'class'=>'AppBundle:Programa',
                    'choice_label'=>'nombre',
                    'label'=>'Programa al que pertenece',
                    'placeholder'=>'Seleccione una Programa Académico'
                ])
                //->add('facts', EntityType::class, array(
                //    'class' => Factor::class,
                //    'required' => false,
                //    'choice_label' => 'whereis',
                //    'multiple' => true
                //))
                ;
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Modelo'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_modelo';
    }


}
