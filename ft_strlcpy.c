/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: psafflow <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/08 13:32:34 by psafflow          #+#    #+#             */
/*   Updated: 2020/05/29 15:09:24 by psafflow         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcpy(char *dest, const char *src, size_t size)
{
	unsigned int	i;
	unsigned int	j;

	i = 0;
	j = 0;
	if (!src || !dest)
		return (0);
	while (src[i] != '\0')
		i++;
	while (src[j] != '\0' && j < ((unsigned int)size - 1))
	{
		dest[j] = src[j];
		j++;
	}
	if (size)
		dest[j] = '\0';
	return (i);
}
