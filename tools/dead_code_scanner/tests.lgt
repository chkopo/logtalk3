%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  This file is part of Logtalk <http://logtalk.org/>  
%  Copyright 2016 Barry Evans <barryevans@kyndi.com>    
%                 Paulo Moura <pmoura@logtalk.org>
%
%  Licensed under the Apache License, Version 2.0 (the "License");
%  you may not use this file except in compliance with the License.
%  You may obtain a copy of the License at
%  
%      http://www.apache.org/licenses/LICENSE-2.0
%  
%  Unless required by applicable law or agreed to in writing, software
%  distributed under the License is distributed on an "AS IS" BASIS,
%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%  See the License for the specific language governing permissions and
%  limitations under the License.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 0.1,
		author is 'Barry Evans and Paulo Moura',
		date is 2016/10/08,
		comment is 'Unit tests for the "dead_code_scanner" tool.'
	]).

	cover(dead_code_scanner).

	:- uses(dead_code_scanner, [
		predicates/2, predicate/2,
		all/0,
		rlibrary/1, library/1,
		rdirectory/1, directory/1,
		file/1
	]).

	% category tests

	test(stand_alone_category_01) :-
		predicates(stand_alone_category, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(category_01) :-
		predicates(category, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	% prototype tests

	test(stand_alone_prototype_01) :-
		predicates(stand_alone_prototype, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(prototype_01) :-
		predicates(prototype, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	% class and instance tests

	test(stand_alone_class_01) :-
		predicates(stand_alone_class, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(class_01) :-
		predicates(class, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(subclass_with_metaclass_01) :-
		predicates(subclass_with_metaclass, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(subclass_01) :-
		predicates(subclass, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

	test(instance_01) :-
		predicates(instance, Predicates),
		Predicates == [
			dead_predicate/0,
			dead_predicate_1/0, dead_predicate_2/0, dead_predicate_3/0,
			dead_non_terminal//0
		].

:- end_object.