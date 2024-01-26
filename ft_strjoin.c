/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pablogon <pablogon@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/13 21:04:58 by pablogon          #+#    #+#             */
/*   Updated: 2023/12/13 21:07:53 by pablogon         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *str1, char const *str2)
{
	char	*ret;
	size_t	len;

	if (!str1 || !str2)
		return (0);
	len = ft_strlen(str1) + ft_strlen(str2);
	ret = malloc(sizeof(char) * (len + 1));
	if (!ret)
		return (0);
	ft_strlcpy(ret, str1, len + 1);
	ft_strlcat(ret, str2, len + 1);
	return (ret);
}
