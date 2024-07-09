import { GithubOutlined } from '@ant-design/icons';
import { DefaultFooter } from '@ant-design/pro-components';
import '@umijs/max';
import React from 'react';

const Footer: React.FC = () => {
  const defaultMessage = '湖南第一深情';
  const currentYear = new Date().getFullYear();
  return (
    <DefaultFooter
      style={{
        background: 'none',
      }}
      copyright={`${currentYear} ${defaultMessage}`}
      links={[
        // {
        //   key: 'github',
        //   title: '年年的GitHub',
        //   href: 'https://github.com/Lynlove',
        //   blankTarget: true,
        // },
        {
          key: 'github',
          title: (
            <>
              <GithubOutlined /> 年年的GitHub
            </>
          ),
          href: 'https://github.com/Lynlove',
          blankTarget: true,
        },
      ]}
    />
  );
};
export default Footer;
