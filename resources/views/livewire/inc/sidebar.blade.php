<div class="sidebar sidebar-blog position-sticky pb-3">
    <div class="aside-item aside-item-cate rounded-10 mb-5">
        <div class="aside-title bold"><svg xmlns="http://www.w3.org/2000/svg"
                class="mr-3" version="1.1"
                xmlns:xlink="http://www.w3.org/1999/xlink" width="512"
                height="512" x="0" y="0" viewBox="0 0 24 24"
                style="enable-background:new 0 0 512 512" xml:space="preserve">
                <g
                    transform="matrix(1.2000000000000008,0,0,1.2000000000000008,-2.3999999046325726,-2.4000000000000092)">
                    <path
                        d="M21 7H3C1.7 7 1.7 5 3 5h18c1.3 0 1.3 2 0 2zM18 13H3c-1.3 0-1.3-2 0-2h15c1.3 0 1.3 2 0 2zM12 19H3c-1.3 0-1.3-2 0-2h9c1.3 0 1.3 2 0 2z"
                        fill="#ffffff" opacity="1" data-original="#000000"></path>
                </g>
            </svg>DANH MỤC</div>
        <nav class="nav-category">
                @foreach ($categories ?? [] as $category)
                <div class="nav-item  position-relative">
                    <a title="Hiện đại" href="/" class="nav-link pr-5">
                        {{ $category->title }}
                    </a>
                </div>
                @endforeach
        </nav>
    </div>
    <script>
        $(".open_mnu").click(function() {
            $(this).toggleClass('cls_mn').next().slideToggle();
        });
    </script>
    <div class="aside-item aside-item-search rounded-10 mb-5">
        <form action="/search" method="get" class="position-relative"
            role="search">
            <input type="text" name="query" class="form-control py-0 pl-3 pr-5"
                placeholder="Từ khóa" autocomplete="off" />
            <input type="hidden" name="type" value="article">
            <button class="btn btn-default position-absolute p-0" type="submit"
                aria-label="Tìm kiếm"><svg xmlns="http://www.w3.org/2000/svg"
                    version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"
                    width="512" height="512" x="0" y="0" viewBox="0 0 48 48"
                    style="enable-background:new 0 0 512 512" xml:space="preserve">
                    <g>
                        <path
                            d="m40.285 37.46-6.486-6.486a14.738 14.738 0 0 0 3.044-8.988c0-3.97-1.546-7.701-4.353-10.508a14.763 14.763 0 0 0-10.508-4.353c-3.969 0-7.7 1.546-10.508 4.353-5.793 5.794-5.793 15.222 0 21.016a14.762 14.762 0 0 0 10.508 4.353c3.294 0 6.415-1.079 8.989-3.045l6.486 6.487c.39.39.902.586 1.414.586s1.024-.196 1.414-.586a2 2 0 0 0 0-2.829zm-25.982-7.794c-4.235-4.235-4.234-11.125 0-15.36a10.792 10.792 0 0 1 7.68-3.18 10.79 10.79 0 0 1 7.679 3.18 10.79 10.79 0 0 1 3.181 7.68c0 2.901-1.13 5.628-3.181 7.68s-4.778 3.18-7.68 3.18c-2.9 0-5.628-1.13-7.68-3.18z"
                            fill="#ffffff" opacity="1" data-original="#000000"
                            class=""></path>
                    </g>
                </svg></button>
        </form>
    </div>
    <div class="aside-item blog_noibat rounded-10 p-4 mb-5 border">
        <div class="aside-title bold mb-3 pb-3 border-bottom"><a href="tin-tuc"
                title="Tin tức mới">Tin tức mới</a></div>
        <div class="blog_content">
            @foreach ($blogs ?? [] as $blog)
                <div class="item d-flex flex-wrap">
                    <a class="post-thumb scale_hover"
                        href="{{ 'blog/'. $blog->title }}"
                        title="{{ $blog->title }}">
                        <img class="w-100 h-100 rounded-5 "
                            src="{{ Storage::url($blog->banner) }}"
                            alt="{{ $blog->title }}">
                    </a>
                    <div class="post-content">
                        <span>{{ \Carbon\Carbon::parse( $blog->created_at)->translatedFormat(' d/n/Y') }}</span>
                        <h3 class="mb-0">
                            <a title="{{ $blog->title }}"
                                href="{{ "blog/". $blog->title }}">{{ $blog->short_desc }}
                            </a>
                        </h3>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
</div>
