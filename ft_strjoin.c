/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pablogon <pablogon@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/13 21:04:58 by pablogon          #+#    #+#             */
/*   Updated: 2024/08/22 20:01:32 by pablogon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*s3;
	int		i;
	int		a;
	int		s1_len;
	int		s2_len;

	if (!s1 || !s2)
		return (NULL);
	i = 0;
	a = 0;
	s1_len = ft_strlen(s1);
	s2_len = ft_strlen(s2);
	s3 = (char *)malloc(sizeof(char) * (s1_len + s2_len + 1));
	if (!s3)
		return (NULL);
	while (s1 && s1[i])
		s3[a++] = s1[i++];
	i = 0;
	while (s2 && s2[i])
		s3[a++] = s2[i++];
	s3[a++] = '\0';
	return (s3);
}
