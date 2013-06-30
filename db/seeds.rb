maeby  = Author.create(:name  => 'maeby bluth',
                       :email => 'maeby@bluth.com',
                       :password => 'pass')
tobias = Author.create(:name  => 'Tobias Funke',
                       :email => 'analrapist@bluth.com',
                       :password => 'pass')
mrf    = Author.create(:name  => 'Mr. F',
                       :email => 'mrf@weebritain.co.uk',
                       :password => 'pass')
buster = Author.create(:name  => 'Buster Bluth',
                       :email => 'buster@bluth.com',
                       :password => 'pass')
gene   = Author.create(:name  => 'Gene Parmesan',
                       :email => 'gene@parmesan.com',
                       :password => 'pass')
gob    = Author.create(:name  => 'GOB',
                       :email => 'gob@bluth.com',
                       :password => 'pass')

lorem      = Tag.create(:phrase => 'lorem ipsum')
marry_me   = Tag.create(:phrase => 'marry me')
blue       = Tag.create(:phrase => 'blue myself')
analrapist = Tag.create(:phrase => 'analrapist')
misterf    = Tag.create(:phrase => 'Mister F')
lucille    = Tag.create(:phrase => 'lucille')
lucille2   = Tag.create(:phrase => 'lucille2')
fake_hand  = Tag.create(:phrase => 'fake hand')
disguise    = Tag.create(:phrase => 'disguise')
idiot      = Tag.create(:phrase => 'idiot with the balloons')
her        = Tag.create(:phrase => 'her?')
mistake    = Tag.create(:phrase => "i've made a huge mistake")

Post.create(:title   => 'Marry Me!',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, marry_me],
            :author_id  => maeby.id)
Post.create(:title   => 'I Just Blue Myself',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, blue, analrapist],
            :author_id  => tobias.id)
Post.create(:title   => 'Mister F',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, misterf],
            :author_id  => mrf.id)
Post.create(:title   => 'Loose Seal',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, lucille, lucille2, fake_hand],
            :author_id  => buster.id)
Post.create(:title   => 'In Disguise',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, disguise, idiot],
            :author_id  => gene.id)
Post.create(:title   => 'Her?',
            :content => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            :tags    => [lorem, her, mistake],
            :author_id  => gob.id)
