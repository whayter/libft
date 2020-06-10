/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwinston <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 12:42:22 by hwinston          #+#    #+#             */
/*   Updated: 2019/10/25 17:12:10 by hwinston         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_front(t_list **alst, t_list *new)
{
	t_list *tmp;

	if (!new)
		return ;
	tmp = new;
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = *alst;
	*alst = new;
}
