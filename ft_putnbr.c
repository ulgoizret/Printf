/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nterziog <nterziog@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/17 16:32:23 by sustmas           #+#    #+#             */
/*   Updated: 2022/12/22 21:53:05 by nterziog         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putnbr(int i)
{
	char	*s;
	int		a;

	if (i == 0)
	{
		write(1, "0", 1);
		return (1);
	}
	else
		s = ft_itoa(i);
	a = ft_putstr(s);
	free(s);
	return (a);
}
