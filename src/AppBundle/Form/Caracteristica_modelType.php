<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class Caracteristica_modelType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class,[  
                'label'=>'Nombre de la característica'
                    ])
                ->add('descripcion', TextareaType::class,[
                    'label'=>'Descripción (si la tiene)'
                    ])
                ->add('ponderacion')
                ->add('valor')
                ->add('porcentaje')
                ->add('factor_model', EntityType::class,
                    [
                        'class'=>'AppBundle:Factor_model',
                        'choice_label'=>'nombre',
                        'label'=>'Factor a la que pertenece',
                        'placeholder'=>'Seleccione un Factor'
                    ]);
    }
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Caracteristica_model'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_caracteristica_model';
    }


}
