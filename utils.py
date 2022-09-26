import pickle
import os
import pathlib
import argparse

def save_traces(file_path = None,
                arviz_trace = None,
                dict_trace = None,
                model = None,
                idx = None,
                backend = 'numpyro',
                infer_type = 'mcmc',
                machine = 'cpu',
                nparticles = 2):
    
    arviz_path = 'data/single_subject/' + \
                 model + '_nsamples_1000_nparams_200_stdfracdenom_6'

    pathlib.Path(file_path).mkdir(parents = True, 
                                   exist_ok = True)

    pickle.dump(arviz_trace, open(file_path + '/arviz_' + infer_type + '_' + backend + '_dataidx_' + \
                                  str(idx) + '_' + machine + '_' + 'nparticles_' + str(nparticles) + '.pickle', 'wb'))
    pickle.dump(dict_trace, open(file_path + '/dict_' + infer_type + '_' + backend + '_dataidx_' + \
                                 str(idx) + '_' + machine + '_' + 'nparticles_' + str(nparticles) + '.pickle', 'wb'))
    
    return