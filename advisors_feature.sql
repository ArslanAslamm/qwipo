
CREATE TABLE `advisor` (
  `advisor_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `linkedin_url` text NOT NULL,
  `image_path` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `advisor`
  ADD PRIMARY KEY (`advisor_id`);

-- AUTO_INCREMENT for table `advisors`
ALTER TABLE `advisor`
  MODIFY `advisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--




