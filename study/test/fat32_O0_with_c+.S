312     {
   0x0000000000082da4 <+0>:     stp     x29, x30, [sp, #-128]!
   0x0000000000082da8 <+4>:     mov     x29, sp
   0x0000000000082dac <+8>:     str     x0, [x29, #24]
   0x0000000000082db0 <+12>:    str     x1, [x29, #16]

313             char *p, *path_part;
314             dir_entry_t *pdir_entry = NULL;
   0x0000000000082db4 <+16>:    str     xzr, [x29, #72]

315         dir_entry_t *pdir_sub;
316         dir_entry_t dir_sub_bk;
317             size_t dirs;
318             bool is_root = true;
   0x0000000000082db8 <+20>:    mov     w0, #0x1                        // #1
   0x0000000000082dbc <+24>:    strb    w0, [x29, #103]

319             file *pfile = NULL;
   0x0000000000082dc0 <+28>:    str     xzr, [x29, #88]

320         
321         memset(&dir_sub_bk, 0, sizeof(dir_entry_t));
   0x0000000000082dc4 <+32>:    add     x0, x29, #0x28
   0x0000000000082dc8 <+36>:    mov     x2, #0x20                       // #32
   0x0000000000082dcc <+40>:    mov     w1, #0x0                        // #0
   0x0000000000082dd0 <+44>:    bl      0x80318 <memset>

322
323             if (path == NULL)
   0x0000000000082dd4 <+48>:    ldr     x0, [x29, #16]
   0x0000000000082dd8 <+52>:    cmp     x0, #0x0
   0x0000000000082ddc <+56>:    b.ne    0x82e08 <fat32_open+100>  // b.any

324                     panic("path is NULL");
   0x0000000000082de0 <+60>:    adrp    x0, 0x84000
   0x0000000000082de4 <+64>:    add     x2, x0, #0xf88
   0x0000000000082de8 <+68>:    adrp    x0, 0x85000
   0x0000000000082dec <+72>:    add     x1, x0, #0x90
   0x0000000000082df0 <+76>:    adrp    x0, 0x84000
   0x0000000000082df4 <+80>:    add     x0, x0, #0xdb8
   0x0000000000082df8 <+84>:    mov     x3, x2
   0x0000000000082dfc <+88>:    mov     x2, x1
   0x0000000000082e00 <+92>:    mov     w1, #0x144                      // #324
   0x0000000000082e04 <+96>:    bl      0x81bd8 <__panic>

325
326             // make a copy of constant path string
327
328             p = (char *)malloc(sizeof(char) * (strlen(path) + 1));
   0x0000000000082e08 <+100>:   ldr     x0, [x29, #16]
   0x0000000000082e0c <+104>:   bl      0x80050 <strlen>
   0x0000000000082e10 <+108>:   add     x0, x0, #0x1
   0x0000000000082e14 <+112>:   bl      0x80760 <malloc>
   0x0000000000082e18 <+116>:   str     x0, [x29, #80]

329             if (p == NULL)
   0x0000000000082e1c <+120>:   ldr     x0, [x29, #80]
   0x0000000000082e20 <+124>:   cmp     x0, #0x0
   0x0000000000082e24 <+128>:   b.ne    0x82e50 <fat32_open+172>  // b.any

330                     panic("Run out of memory!\n");
   0x0000000000082e28 <+132>:   adrp    x0, 0x84000
---Type <return> to continue, or q <return> to quit---
   0x0000000000082e2c <+136>:   add     x2, x0, #0xf98
   0x0000000000082e30 <+140>:   adrp    x0, 0x85000
   0x0000000000082e34 <+144>:   add     x1, x0, #0x90
   0x0000000000082e38 <+148>:   adrp    x0, 0x84000
   0x0000000000082e3c <+152>:   add     x0, x0, #0xdb8
   0x0000000000082e40 <+156>:   mov     x3, x2
   0x0000000000082e44 <+160>:   mov     x2, x1
   0x0000000000082e48 <+164>:   mov     w1, #0x14a                      // #330
   0x0000000000082e4c <+168>:   bl      0x81bd8 <__panic>

331             strcpy(p, path);
   0x0000000000082e50 <+172>:   ldr     x1, [x29, #16]
   0x0000000000082e54 <+176>:   ldr     x0, [x29, #80]
   0x0000000000082e58 <+180>:   bl      0x800b8 <strcpy>

332
333             path_part = strtok(p, "/");
   0x0000000000082e5c <+184>:   adrp    x0, 0x84000
   0x0000000000082e60 <+188>:   add     x0, x0, #0xfb0
   0x0000000000082e64 <+192>:   mov     x1, x0
   0x0000000000082e68 <+196>:   ldr     x0, [x29, #80]
   0x0000000000082e6c <+200>:   bl      0x80218 <strtok>
   0x0000000000082e70 <+204>:   str     x0, [x29, #120]

334             while (path_part != NULL) {
   0x0000000000082e74 <+208>:   b       0x82f88 <fat32_open+484>

335                     // determine to read root cluster or sub-directory cluster
336                     if (is_root) {
   0x0000000000082e78 <+212>:   ldrb    w0, [x29, #103]
   0x0000000000082e7c <+216>:   cmp     w0, #0x0
   0x0000000000082e80 <+220>:   b.eq    0x82ec8 <fat32_open+292>  // b.none

339                                             pfat32->root_cluster,
   0x0000000000082e84 <+224>:   ldr     x0, [x29, #24]
   0x0000000000082e88 <+228>:   ldr     w0, [x0, #176]

338                             dirs = fat32_read_chain(pfat32,
   0x0000000000082e8c <+232>:   mov     w0, w0
   0x0000000000082e90 <+236>:   add     x1, x29, #0x48
   0x0000000000082e94 <+240>:   mov     x2, x1
   0x0000000000082e98 <+244>:   mov     x1, x0
   0x0000000000082e9c <+248>:   ldr     x0, [x29, #24]
   0x0000000000082ea0 <+252>:   bl      0x8270c <fat32_read_chain>
   0x0000000000082ea4 <+256>:   lsr     x0, x0, #5
   0x0000000000082ea8 <+260>:   str     x0, [x29, #104]

340                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
341
342                             DEBUG("Root cluster read.\n");
   0x0000000000082eac <+264>:   adrp    x0, 0x84000
   0x0000000000082eb0 <+268>:   add     x1, x0, #0xfb8
   0x0000000000082eb4 <+272>:   adrp    x0, 0x85000
   0x0000000000082eb8 <+276>:   add     x0, x0, #0x90
   0x0000000000082ebc <+280>:   bl      0x81d08 <__debug>

343
344                             is_root = false;
   0x0000000000082ec0 <+284>:   strb    wzr, [x29, #103]
   0x0000000000082ec4 <+288>:   b       0x82f34 <fat32_open+400>

345                     } else {
346                             // open fail when the last entry found is not a directory
347                             if (!FAT32_IS_DIR(pdir_sub->reg_dir.attribute))
---Type <return> to continue, or q <return> to quit---
   0x0000000000082ec8 <+292>:   ldr     x0, [x29, #112]
   0x0000000000082ecc <+296>:   ldrb    w0, [x0, #11]
   0x0000000000082ed0 <+300>:   and     w0, w0, #0x10
   0x0000000000082ed4 <+304>:   cmp     w0, #0x0
   0x0000000000082ed8 <+308>:   b.eq    0x83190 <fat32_open+1004>  // b.none

349
350                             // copy the directory entry found and free current entries
351                             dir_sub_bk = *pdir_sub;
   0x0000000000082edc <+312>:   ldr     x0, [x29, #112]
   0x0000000000082ee0 <+316>:   add     x2, x29, #0x28
   0x0000000000082ee4 <+320>:   mov     x3, x0
   0x0000000000082ee8 <+324>:   ldp     x0, x1, [x3]
   0x0000000000082eec <+328>:   stp     x0, x1, [x2]
   0x0000000000082ef0 <+332>:   ldp     x0, x1, [x3, #16]
   0x0000000000082ef4 <+336>:   stp     x0, x1, [x2, #16]

352                             free(pdir_entry);
   0x0000000000082ef8 <+340>:   ldr     x0, [x29, #72]
   0x0000000000082efc <+344>:   bl      0x80878 <free>

356                                             (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
   0x0000000000082f00 <+348>:   ldrh    w0, [x29, #60]
   0x0000000000082f04 <+352>:   lsl     w0, w0, #16
   0x0000000000082f08 <+356>:   mov     w1, w0

357                                             dir_sub_bk.reg_dir.cluster_low,
   0x0000000000082f0c <+360>:   ldrh    w0, [x29, #66]

356                                             (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
   0x0000000000082f10 <+364>:   add     w0, w1, w0

355                             dirs = fat32_read_chain(pfat32,
   0x0000000000082f14 <+368>:   mov     w0, w0
   0x0000000000082f18 <+372>:   add     x1, x29, #0x48
   0x0000000000082f1c <+376>:   mov     x2, x1
   0x0000000000082f20 <+380>:   mov     x1, x0
   0x0000000000082f24 <+384>:   ldr     x0, [x29, #24]
   0x0000000000082f28 <+388>:   bl      0x8270c <fat32_read_chain>
   0x0000000000082f2c <+392>:   lsr     x0, x0, #5
   0x0000000000082f30 <+396>:   str     x0, [x29, #104]

358                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
359                     }
360
361                     DEBUG("Finding sub-directory \"%s\".\n", path_part);
   0x0000000000082f34 <+400>:   adrp    x0, 0x84000
   0x0000000000082f38 <+404>:   add     x1, x0, #0xfd0
   0x0000000000082f3c <+408>:   adrp    x0, 0x85000
   0x0000000000082f40 <+412>:   add     x0, x0, #0x90
   0x0000000000082f44 <+416>:   ldr     x2, [x29, #120]
   0x0000000000082f48 <+420>:   bl      0x81d08 <__debug>

362
363                     pdir_sub = fat32_find_entry(path_part, pdir_entry, dirs);
   0x0000000000082f4c <+424>:   ldr     x0, [x29, #72]
   0x0000000000082f50 <+428>:   ldr     x2, [x29, #104]
   0x0000000000082f54 <+432>:   mov     x1, x0
   0x0000000000082f58 <+436>:   ldr     x0, [x29, #120]
   0x0000000000082f5c <+440>:   bl      0x829f4 <fat32_find_entry>
   0x0000000000082f60 <+444>:   str     x0, [x29, #112]

364
365                     // no corresponding entry in directory entries
---Type <return> to continue, or q <return> to quit---
366                     if (pdir_sub == NULL)
   0x0000000000082f64 <+448>:   ldr     x0, [x29, #112]
   0x0000000000082f68 <+452>:   cmp     x0, #0x0
   0x0000000000082f6c <+456>:   b.eq    0x83198 <fat32_open+1012>  // b.none

368
369                     path_part = strtok(NULL, "/");
   0x0000000000082f70 <+460>:   adrp    x0, 0x84000
   0x0000000000082f74 <+464>:   add     x0, x0, #0xfb0
   0x0000000000082f78 <+468>:   mov     x1, x0
   0x0000000000082f7c <+472>:   mov     x0, #0x0                        // #0
   0x0000000000082f80 <+476>:   bl      0x80218 <strtok>
   0x0000000000082f84 <+480>:   str     x0, [x29, #120]

334             while (path_part != NULL) {
   0x0000000000082f88 <+484>:   ldr     x0, [x29, #120]
   0x0000000000082f8c <+488>:   cmp     x0, #0x0
   0x0000000000082f90 <+492>:   b.ne    0x82e78 <fat32_open+212>  // b.any

370             }
371
372             pfile = (file *)malloc(sizeof(file));
   0x0000000000082f94 <+496>:   mov     x0, #0x20                       // #32
   0x0000000000082f98 <+500>:   bl      0x80760 <malloc>
   0x0000000000082f9c <+504>:   str     x0, [x29, #88]

373             if (pfile == NULL)
   0x0000000000082fa0 <+508>:   ldr     x0, [x29, #88]
   0x0000000000082fa4 <+512>:   cmp     x0, #0x0
   0x0000000000082fa8 <+516>:   b.eq    0x831a0 <fat32_open+1020>  // b.none

375
376             if (is_root) {
   0x0000000000082fac <+520>:   ldrb    w0, [x29, #103]
   0x0000000000082fb0 <+524>:   cmp     w0, #0x0
   0x0000000000082fb4 <+528>:   b.eq    0x82fd8 <fat32_open+564>  // b.none

377                     pfile->cluster = pfat32->root_cluster;
   0x0000000000082fb8 <+532>:   ldr     x0, [x29, #24]
   0x0000000000082fbc <+536>:   ldr     w1, [x0, #176]
   0x0000000000082fc0 <+540>:   ldr     x0, [x29, #88]
   0x0000000000082fc4 <+544>:   str     w1, [x0]

378                     pfile->attribute = 0x10;
   0x0000000000082fc8 <+548>:   ldr     x0, [x29, #88]
   0x0000000000082fcc <+552>:   mov     w1, #0x10                       // #16
   0x0000000000082fd0 <+556>:   strb    w1, [x0, #16]
   0x0000000000082fd4 <+560>:   b       0x831a4 <fat32_open+1024>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
379             } else {
380
381                     DEBUG("before write pfile.\n");
   0x0000000000082fd8 <+564>:   adrp    x0, 0x84000
   0x0000000000082fdc <+568>:   add     x1, x0, #0xff0
   0x0000000000082fe0 <+572>:   adrp    x0, 0x85000
   0x0000000000082fe4 <+576>:   add     x0, x0, #0x90
   0x0000000000082fe8 <+580>:   bl      0x81d08 <__debug>

382
383                     memcpy(((uint16_t *)(&pfile->cluster) + 1), &dir_sub_bk.reg_dir.cluster_high, 2);
   0x0000000000082fec <+584>:   ldr     x0, [x29, #88]
   0x0000000000082ff0 <+588>:   add     x3, x0, #0x2
   0x0000000000082ff4 <+592>:   add     x0, x29, #0x28
   0x0000000000082ff8 <+596>:   add     x0, x0, #0x14
---Type <return> to continue, or q <return> to quit---
   0x0000000000082ffc <+600>:   mov     x2, #0x2                        // #2
   0x0000000000083000 <+604>:   mov     x1, x0
   0x0000000000083004 <+608>:   mov     x0, x3
   0x0000000000083008 <+612>:   bl      0x80030 <memcpy>

384                     memcpy(&pfile->cluster, &dir_sub_bk.reg_dir.cluster_low, 2);
   0x000000000008300c <+616>:   ldr     x3, [x29, #88]
   0x0000000000083010 <+620>:   add     x0, x29, #0x28
   0x0000000000083014 <+624>:   add     x0, x0, #0x1a
   0x0000000000083018 <+628>:   mov     x2, #0x2                        // #2
   0x000000000008301c <+632>:   mov     x1, x0
   0x0000000000083020 <+636>:   mov     x0, x3
   0x0000000000083024 <+640>:   bl      0x80030 <memcpy>

385
386     //              pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
387     //                      dir_sub_bk.reg_dir.cluster_low;
388                     kprintf("+");
   0x0000000000083028 <+644>:   adrp    x0, 0x85000
   0x000000000008302c <+648>:   add     x0, x0, #0x8
   0x0000000000083030 <+652>:   bl      0x81b60 <kprintf>

389                     pfile->attribute = dir_sub_bk.reg_dir.attribute;
   0x0000000000083034 <+656>:   ldrb    w1, [x29, #51]
   0x0000000000083038 <+660>:   ldr     x0, [x29, #88]
   0x000000000008303c <+664>:   strb    w1, [x0, #16]

390                     kprintf("+");
   0x0000000000083040 <+668>:   adrp    x0, 0x85000
   0x0000000000083044 <+672>:   add     x0, x0, #0x8
   0x0000000000083048 <+676>:   bl      0x81b60 <kprintf>

391                     pfile->pfat32 = pfat32;
   0x000000000008304c <+680>:   ldr     x0, [x29, #88]
   0x0000000000083050 <+684>:   ldr     x1, [x29, #24]
   0x0000000000083054 <+688>:   str     x1, [x0, #8]

392                     kprintf("+");
   0x0000000000083058 <+692>:   adrp    x0, 0x85000
   0x000000000008305c <+696>:   add     x0, x0, #0x8
   0x0000000000083060 <+700>:   bl      0x81b60 <kprintf>

393                     pfile->time_ts = dir_sub_bk.reg_dir.time_ts;
   0x0000000000083064 <+704>:   ldrb    w1, [x29, #53]
   0x0000000000083068 <+708>:   ldr     x0, [x29, #88]
   0x000000000008306c <+712>:   strb    w1, [x0, #17]

394                     kprintf("+");
   0x0000000000083070 <+716>:   adrp    x0, 0x85000
   0x0000000000083074 <+720>:   add     x0, x0, #0x8
   0x0000000000083078 <+724>:   bl      0x81b60 <kprintf>

395
396                     memcpy(&pfile->creation_time, &dir_sub_bk.reg_dir.creation_time, 2);
   0x000000000008307c <+728>:   ldr     x0, [x29, #88]
   0x0000000000083080 <+732>:   add     x3, x0, #0x12
   0x0000000000083084 <+736>:   add     x0, x29, #0x28
   0x0000000000083088 <+740>:   add     x0, x0, #0xe
   0x000000000008308c <+744>:   mov     x2, #0x2                        // #2
   0x0000000000083090 <+748>:   mov     x1, x0
   0x0000000000083094 <+752>:   mov     x0, x3
   0x0000000000083098 <+756>:   bl      0x80030 <memcpy>

397     //              pfile->creation_time = dir_sub_bk.reg_dir.creation_time;
---Type <return> to continue, or q <return> to quit---
398                     kprintf("+");
   0x000000000008309c <+760>:   adrp    x0, 0x85000
   0x00000000000830a0 <+764>:   add     x0, x0, #0x8
   0x00000000000830a4 <+768>:   bl      0x81b60 <kprintf>

399
400                     memcpy(&pfile->creation_date, &dir_sub_bk.reg_dir.creation_date, 2);
   0x00000000000830a8 <+772>:   ldr     x0, [x29, #88]
   0x00000000000830ac <+776>:   add     x3, x0, #0x14
   0x00000000000830b0 <+780>:   add     x0, x29, #0x28
   0x00000000000830b4 <+784>:   add     x0, x0, #0x10
   0x00000000000830b8 <+788>:   mov     x2, #0x2                        // #2
   0x00000000000830bc <+792>:   mov     x1, x0
   0x00000000000830c0 <+796>:   mov     x0, x3
   0x00000000000830c4 <+800>:   bl      0x80030 <memcpy>

401     //              pfile->creation_date = dir_sub_bk.reg_dir.creation_date;
402                     kprintf("+");
   0x00000000000830c8 <+804>:   adrp    x0, 0x85000
   0x00000000000830cc <+808>:   add     x0, x0, #0x8
   0x00000000000830d0 <+812>:   bl      0x81b60 <kprintf>

403
404                     memcpy(&pfile->last_acc_date, &dir_sub_bk.reg_dir.last_acc_date, 2);
   0x00000000000830d4 <+816>:   ldr     x0, [x29, #88]
   0x00000000000830d8 <+820>:   add     x3, x0, #0x16
   0x00000000000830dc <+824>:   add     x0, x29, #0x28
   0x00000000000830e0 <+828>:   add     x0, x0, #0x12
   0x00000000000830e4 <+832>:   mov     x2, #0x2                        // #2
   0x00000000000830e8 <+836>:   mov     x1, x0
   0x00000000000830ec <+840>:   mov     x0, x3
   0x00000000000830f0 <+844>:   bl      0x80030 <memcpy>

405                     kprintf("+");
   0x00000000000830f4 <+848>:   adrp    x0, 0x85000
   0x00000000000830f8 <+852>:   add     x0, x0, #0x8
   0x00000000000830fc <+856>:   bl      0x81b60 <kprintf>

406                     memcpy(&pfile->last_mod_time, &dir_sub_bk.reg_dir.last_mod_time, 2);
   0x0000000000083100 <+860>:   ldr     x0, [x29, #88]
   0x0000000000083104 <+864>:   add     x3, x0, #0x18
   0x0000000000083108 <+868>:   add     x0, x29, #0x28
   0x000000000008310c <+872>:   add     x0, x0, #0x16
   0x0000000000083110 <+876>:   mov     x2, #0x2                        // #2
   0x0000000000083114 <+880>:   mov     x1, x0
   0x0000000000083118 <+884>:   mov     x0, x3
   0x000000000008311c <+888>:   bl      0x80030 <memcpy>

407                     kprintf("+");
   0x0000000000083120 <+892>:   adrp    x0, 0x85000
   0x0000000000083124 <+896>:   add     x0, x0, #0x8
   0x0000000000083128 <+900>:   bl      0x81b60 <kprintf>

408                     memcpy(&pfile->last_mod_date, &dir_sub_bk.reg_dir.last_mod_date, 2);
   0x000000000008312c <+904>:   ldr     x0, [x29, #88]
   0x0000000000083130 <+908>:   add     x3, x0, #0x1a
   0x0000000000083134 <+912>:   add     x0, x29, #0x28
   0x0000000000083138 <+916>:   add     x0, x0, #0x18
   0x000000000008313c <+920>:   mov     x2, #0x2                        // #2
   0x0000000000083140 <+924>:   mov     x1, x0
   0x0000000000083144 <+928>:   mov     x0, x3
   0x0000000000083148 <+932>:   bl      0x80030 <memcpy>

409                     kprintf("+\n");
---Type <return> to continue, or q <return> to quit---
   0x000000000008314c <+936>:   adrp    x0, 0x85000
   0x0000000000083150 <+940>:   add     x0, x0, #0x10
   0x0000000000083154 <+944>:   bl      0x81b60 <kprintf>

410                     memcpy(&pfile->size, &dir_sub_bk.reg_dir.size, 4);
   0x0000000000083158 <+948>:   ldr     x0, [x29, #88]
   0x000000000008315c <+952>:   add     x3, x0, #0x1c
   0x0000000000083160 <+956>:   add     x0, x29, #0x28
   0x0000000000083164 <+960>:   add     x0, x0, #0x1c
   0x0000000000083168 <+964>:   mov     x2, #0x4                        // #4
   0x000000000008316c <+968>:   mov     x1, x0
   0x0000000000083170 <+972>:   mov     x0, x3
   0x0000000000083174 <+976>:   bl      0x80030 <memcpy>

411     /*
412                     pfile->last_acc_date = dir_sub_bk.reg_dir.last_acc_date;
413                     kprintf("+");
414                     pfile->last_mod_time = dir_sub_bk.reg_dir.last_mod_time;
415                     kprintf("+");
416                     pfile->last_mod_date = dir_sub_bk.reg_dir.last_mod_date;
417                     kprintf("+");
418                     pfile->size = dir_sub_bk.reg_dir.size;*/
419
420                     DEBUG("after write pfile.\n");
   0x0000000000083178 <+980>:   adrp    x0, 0x85000
   0x000000000008317c <+984>:   add     x1, x0, #0x18
   0x0000000000083180 <+988>:   adrp    x0, 0x85000
   0x0000000000083184 <+992>:   add     x0, x0, #0x90
   0x0000000000083188 <+996>:   bl      0x81d08 <__debug>
   0x000000000008318c <+1000>:  b       0x831a4 <fat32_open+1024>

348                                     goto fat32_open_return;
   0x0000000000083190 <+1004>:  nop
   0x0000000000083194 <+1008>:  b       0x831a4 <fat32_open+1024>

367                             goto fat32_open_return;
   0x0000000000083198 <+1012>:  nop
   0x000000000008319c <+1016>:  b       0x831a4 <fat32_open+1024>

374                     goto fat32_open_return;
   0x00000000000831a0 <+1020>:  nop

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
421             }
422
423     fat32_open_return:
424
425             free(p);
   0x00000000000831a4 <+1024>:  ldr     x0, [x29, #80]
   0x00000000000831a8 <+1028>:  bl      0x80878 <free>

426             if (pdir_entry != NULL) {
   0x00000000000831ac <+1032>:  ldr     x0, [x29, #72]
   0x00000000000831b0 <+1036>:  cmp     x0, #0x0
   0x00000000000831b4 <+1040>:  b.eq    0x831c0 <fat32_open+1052>  // b.none

427                     free(pdir_entry);
   0x00000000000831b8 <+1044>:  ldr     x0, [x29, #72]
   0x00000000000831bc <+1048>:  bl      0x80878 <free>

428             }
429
430             return pfile;
   0x00000000000831c0 <+1052>:  ldr     x0, [x29, #88]
431     }
   0x00000000000831c4 <+1056>:  ldp     x29, x30, [sp], #128
   0x00000000000831c8 <+1060>:  ret

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   140     {
   0x0000000000080878 <+0>:     stp     x29, x30, [sp, #-32]!

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x000000000008087c <+4>:     mov     x2, x0
   0x0000000000080880 <+8>:     adrp    x1, 0x83000 <fat32_open+604>
   0x0000000000080884 <+12>:    add     x1, x1, #0xc60

140     {
   0x0000000000080888 <+16>:    mov     x29, sp
   0x000000000008088c <+20>:    stp     x19, x20, [sp, #16]

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x0000000000080890 <+24>:    adrp    x19, 0x83000 <fat32_open+604>
   0x0000000000080894 <+28>:    add     x19, x19, #0xbd0

140     {
   0x0000000000080898 <+32>:    mov     x20, x0

141             struct mem_chuck * pchuck;
142
143         DEBUG("Freeing 0x%x\n", (uint64_t)ptr);
   0x000000000008089c <+36>:    add     x19, x19, #0x10
   0x00000000000808a0 <+40>:    mov     x0, x19
   0x00000000000808a4 <+44>:    bl      0x81d08 <__debug>

144             DEBUG("Fetching pchuck at 0x%x\n", (struct mem_chuck *)ptr - 1);
   0x00000000000808a8 <+48>:    sub     x2, x20, #0x18
   0x00000000000808ac <+52>:    mov     x0, x19
   0x00000000000808b0 <+56>:    adrp    x1, 0x83000 <fat32_open+604>
   0x00000000000808b4 <+60>:    add     x1, x1, #0xc70
   0x00000000000808b8 <+64>:    bl      0x81d08 <__debug>

145
146             pchuck = ((struct mem_chuck *)ptr) - 1;
147             MEM_CHUCK_CLR(pchuck);
   0x00000000000808bc <+68>:    ldur    w2, [x20, #-24]

148
149             DEBUG("Free success.\n");
   0x00000000000808c0 <+72>:    mov     x0, x19
   0x00000000000808c4 <+76>:    adrp    x1, 0x83000 <fat32_open+604>
   0x00000000000808c8 <+80>:    add     x1, x1, #0xc90

147             MEM_CHUCK_CLR(pchuck);
   0x00000000000808cc <+84>:    and     w2, w2, #0xfffffffe
   0x00000000000808d0 <+88>:    stur    w2, [x20, #-24]

150
151             return;
152     }
   0x00000000000808d4 <+92>:    ldp     x19, x20, [sp, #16]
   0x00000000000808d8 <+96>:    ldp     x29, x30, [sp], #32

149             DEBUG("Free success.\n");
   0x00000000000808dc <+100>:   b       0x81d08 <__debug>
