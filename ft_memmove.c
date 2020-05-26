/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: psafflow <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/08 15:31:55 by psafflow          #+#    #+#             */
/*   Updated: 2020/05/14 18:09:24 by psafflow         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	char			str[n];
	size_t			i;
	size_t			j;
	unsigned char	*pdest;
	unsigned char	*psrc;

	i = 0;
	j = 0;
	pdest = (unsigned char*)dest;
	psrc = (unsigned char*)src;
	while (i < n)
	{
		str[i] = psrc[i];
		i++;
	}
	while (j < n)
	{
		pdest[j] = str[j];
		j++;
	}
	return (dest);
}
