/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwinston <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/18 14:01:29 by hwinston          #+#    #+#             */
/*   Updated: 2022/10/18 17:36:24 by hwinston         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_space(char c)
{
	if (c == ' ' || c == '\t' || c == '\v'
	|| c == '\n' || c == '\r' || c == '\f')
		return (1);
	return (0);
}

double ft_atof(const char *str)
{
    double          res;
    int				sign;
	unsigned int	i;
    unsigned int    j;
    unsigned int    offset;

	i = 0;
	while (ft_space(str[i]))
		i++;
	sign = 1;
	if (str[i] == '+' || str[i] == '-')
		if (str[i++] == '-')
			sign = -1;
	res = 0.0;
    while (ft_isdigit(str[i]))
		res = res * 10 + str[i++] - '0';
    if (str[i] == '.')
    {
        offset = 1;
        while (ft_isdigit(str[++i]))
        {
            j = 0;
            double dec = str[i] - '0';
            while (j++ < offset)
                dec /= 10;
            res += dec;
            offset++;
        }
    }
	return (res * sign);
}
