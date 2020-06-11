floors = Floor.create([
                        { title: 'Первый этаж', level: 1, area: '46.73', rooms_structure: 'холл и кухня, гардероб, туалет',
                          summary: '400', small_image: '1-floor.png', large_image: '1-floor-large.png' },
                        { title: 'Второй этаж',	level: 2, area: '47.58', rooms_structure: 'спальня, детская, гардероб, санузел, коридор',
                          summary: '800',	small_image: '2-floor.png',	large_image: '2-floor-large.png' }
                      ])

rooms = Room.create([
                      { name: 'Холл и кухня', area: '37.77', floor_id: '1', image: 'hall.png'	},
                      { name: 'Гардероб', area: '4.56', floor_id: '1', image: 'wardrobe.png'	},
                      { name: 'Туалет', area: '2.04', floor_id: '1', image: 'wc.png'	},
                      { name: 'Спальня', area: '14.10', floor_id: '2', image: 'bedroom.png'	},
                      { name: 'Детская', area: '12.80', floor_id: '2', image: 'childroom.png'	},
                      { name: 'Гардероб', area: '5.72', floor_id: '2', image: 'wardrobe1.png'	},
                      { name: 'Совмещенный санузел', area: '6.37', floor_id: '2', image: 'bathroom.png'	},
                      { name: 'У лестницы', area: '3.90', floor_id: '2', image: 'corridor.png'	}
                    ])

maps = Map.create([
                    { name: 'Первый этаж', floor_id: 1, coords: '<area coords="107,125,498,125,498,583,403,581,403,713,282,713,282,583,104,583" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;ffee82&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;ffee82&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/1" shape="poly" target="_self" title="Холл и кухня">
                                                                 <area coords="105,589,276,713" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;9b96fa&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;9b96fa&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/2" shape="rect" target="_self" title="Гардероб">
                                                                 <area coords="410,589,498,713" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;d79bfa&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;d79bfa&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/3" shape="rect" target="_self" title="Туалет"></map>' },
                    { name: 'Первый этаж', floor_id: 2, coords: '<area coords="132,155,361,155,361,328,331,328,331,442,132,442" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;d79bfa&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;d79bfa&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/4" shape="poly" target="_self" title="Спальня">
                                                                 <area coords="368,155,514,328" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;a1ff75&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;a1ff75&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/6" shape="rect" target="_self" title="Гардероб">
                                                                 <area coords="130,448,332,730" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;759eff&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;759eff&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/5" shape="rect" target="_self" title="Детская комната">
                                                                 <area coords="338,730,514,558" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;b375ff&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;b375ff&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/7" shape="rect" target="_self" title="Совмещенный санузел">
                                                                 <area coords="338,334,413,550" data-html="true" data-maphilight="{&quot;strokeColor&quot;:&quot;b375ff&quot;,&quot;strokeWidth&quot;:0,&quot;fillColor&quot;:&quot;b375ff&quot;,&quot;fillOpacity&quot;:0.5}" data-toggle="tooltip" href="/rooms/8" shape="rect" target="_self" title="У лестницы"></map>' },
                  ])

tasks = Task.create([
                    { title: 'Покрытие полов', price: 250.00, work_time: '24', deadline: '2020-06-25', room_id: 1 }
                    ])
