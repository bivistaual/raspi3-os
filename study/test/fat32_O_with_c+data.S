312     {
   0x00000000000829d4 <+0>:     sub     sp, sp, #0x470
   0x00000000000829d8 <+4>:     stp     x29, x30, [sp]
   0x00000000000829dc <+8>:     mov     x29, sp
   0x00000000000829e0 <+12>:    stp     x19, x20, [sp, #16]
   0x00000000000829e4 <+16>:    stp     x21, x22, [sp, #32]
   0x00000000000829e8 <+20>:    str     x23, [sp, #48]
   0x00000000000829ec <+24>:    mov     x22, x0
   0x00000000000829f0 <+28>:    mov     x21, x1

313             char p[1024], *path_part;
314             dir_entry_t *pdir_entry = NULL;
   0x00000000000829f4 <+32>:    str     xzr, [x29, #104]

320         
321         memset(&dir_sub_bk, 0, sizeof(dir_entry_t));
   0x00000000000829f8 <+36>:    mov     x2, #0x20                       // #32
   0x00000000000829fc <+40>:    mov     w1, #0x0                        // #0
   0x0000000000082a00 <+44>:    add     x0, x29, #0x48
   0x0000000000082a04 <+48>:    bl      0x80318 <memset>

322
323             if (path == NULL)
   0x0000000000082a08 <+52>:    cbz     x21, 0x82a54 <fat32_open+128>

325
326             // make a copy of constant path string
327
328             strcpy(p, path);
   0x0000000000082a0c <+56>:    add     x19, x29, #0x70
   0x0000000000082a10 <+60>:    mov     x1, x21
   0x0000000000082a14 <+64>:    mov     x0, x19
   0x0000000000082a18 <+68>:    bl      0x800b8 <strcpy>

329
330             path_part = strtok(p, "/");
   0x0000000000082a1c <+72>:    adrp    x1, 0x83000
   0x0000000000082a20 <+76>:    add     x1, x1, #0xd18
   0x0000000000082a24 <+80>:    mov     x0, x19
   0x0000000000082a28 <+84>:    bl      0x80218 <strtok>
   0x0000000000082a2c <+88>:    mov     x19, x0

331             while (path_part != NULL) {
   0x0000000000082a30 <+92>:    cbz     x0, 0x82d04 <fat32_open+816>
   0x0000000000082a34 <+96>:    str     x24, [x29, #56]

318             bool is_root = true;
   0x0000000000082a38 <+100>:   mov     w0, #0x1                        // #1

350
351                             // read next directory entry
352                             dirs = fat32_read_chain(pfat32,
   0x0000000000082a3c <+104>:   add     x23, x29, #0x68

339                             DEBUG("Root cluster read.\n");
   0x0000000000082a40 <+108>:   adrp    x24, 0x84000
   0x0000000000082a44 <+112>:   adrp    x21, 0x84000
   0x0000000000082a48 <+116>:   add     x21, x21, #0x8e8
   0x0000000000082a4c <+120>:   add     x21, x21, #0x60
   0x0000000000082a50 <+124>:   b       0x82ae4 <fat32_open+272>

324                     panic("path is NULL");
---Type <return> to continue, or q <return> to quit---
   0x0000000000082a54 <+128>:   adrp    x3, 0x84000
   0x0000000000082a58 <+132>:   add     x3, x3, #0xb58
   0x0000000000082a5c <+136>:   adrp    x2, 0x84000
   0x0000000000082a60 <+140>:   add     x2, x2, #0x8e8
   0x0000000000082a64 <+144>:   add     x2, x2, #0x60
   0x0000000000082a68 <+148>:   mov     w1, #0x144                      // #324
   0x0000000000082a6c <+152>:   adrp    x0, 0x84000
   0x0000000000082a70 <+156>:   add     x0, x0, #0x9e8
   0x0000000000082a74 <+160>:   bl      0x81bd8 <__panic>
   0x0000000000082a78 <+164>:   b       0x82a0c <fat32_open+56>

334
335                             dirs = fat32_read_chain(pfat32,
   0x0000000000082a7c <+168>:   mov     x2, x23
   0x0000000000082a80 <+172>:   ldr     w1, [x22, #176]
   0x0000000000082a84 <+176>:   mov     x0, x22
   0x0000000000082a88 <+180>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082a8c <+184>:   lsr     x20, x0, #5

336                                             pfat32->root_cluster,
337                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
338
339                             DEBUG("Root cluster read.\n");
   0x0000000000082a90 <+188>:   add     x1, x24, #0xb68
   0x0000000000082a94 <+192>:   mov     x0, x21
   0x0000000000082a98 <+196>:   bl      0x81d08 <__debug>

355                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
356                     }
357
358                     DEBUG("Finding sub-directory \"%s\".\n", path_part);
   0x0000000000082a9c <+200>:   mov     x2, x19
   0x0000000000082aa0 <+204>:   adrp    x1, 0x84000
   0x0000000000082aa4 <+208>:   add     x1, x1, #0xb80
   0x0000000000082aa8 <+212>:   mov     x0, x21
   0x0000000000082aac <+216>:   bl      0x81d08 <__debug>

359
360                     pdir_sub = fat32_find_entry(path_part, pdir_entry, dirs);
   0x0000000000082ab0 <+220>:   mov     x2, x20
   0x0000000000082ab4 <+224>:   ldr     x1, [x29, #104]
   0x0000000000082ab8 <+228>:   mov     x0, x19
   0x0000000000082abc <+232>:   bl      0x828b8 <fat32_find_entry>
   0x0000000000082ac0 <+236>:   mov     x20, x0

361
362                     // no corresponding entry in directory entries
363                     if (pdir_sub == NULL)
   0x0000000000082ac4 <+240>:   cbz     x0, 0x82c54 <fat32_open+640>

364                             goto fat32_open_return;
365
366                     path_part = strtok(NULL, "/");
   0x0000000000082ac8 <+244>:   adrp    x1, 0x83000
   0x0000000000082acc <+248>:   add     x1, x1, #0xd18
   0x0000000000082ad0 <+252>:   mov     x0, #0x0                        // #0
   0x0000000000082ad4 <+256>:   bl      0x80218 <strtok>
   0x0000000000082ad8 <+260>:   mov     x19, x0
   0x0000000000082adc <+264>:   mov     w0, #0x0                        // #0

331             while (path_part != NULL) {
   0x0000000000082ae0 <+268>:   cbz     x19, 0x82cec <fat32_open+792>

332                     // determine to read root cluster or sub-directory cluster
---Type <return> to continue, or q <return> to quit---
333                     if (is_root) {
   0x0000000000082ae4 <+272>:   cbnz    w0, 0x82a7c <fat32_open+168>

340
341                             is_root = false;
342                     } else {
343                             // open fail when the last entry found is not a directory
344                             if (!FAT32_IS_DIR(pdir_sub->reg_dir.attribute))
   0x0000000000082ae8 <+276>:   ldrb    w0, [x20, #11]
   0x0000000000082aec <+280>:   tbz     w0, #4, 0x82c48 <fat32_open+628>

345                                     goto fat32_open_return;
346
347                             // copy the directory entry found and free current entries
348                             dir_sub_bk = *pdir_sub;
   0x0000000000082af0 <+284>:   ldp     x0, x1, [x20]
   0x0000000000082af4 <+288>:   stp     x0, x1, [x29, #72]
   0x0000000000082af8 <+292>:   ldp     x0, x1, [x20, #16]
   0x0000000000082afc <+296>:   stp     x0, x1, [x29, #88]

349                             free(pdir_entry);
   0x0000000000082b00 <+300>:   ldr     x0, [x29, #104]
   0x0000000000082b04 <+304>:   bl      0x80878 <free>

353                                             (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
   0x0000000000082b08 <+308>:   ldrh    w1, [x29, #92]

354                                             dir_sub_bk.reg_dir.cluster_low,
   0x0000000000082b0c <+312>:   ldrh    w0, [x29, #98]

352                             dirs = fat32_read_chain(pfat32,
   0x0000000000082b10 <+316>:   mov     x2, x23
   0x0000000000082b14 <+320>:   add     w1, w0, w1, lsl #16
   0x0000000000082b18 <+324>:   mov     x0, x22
   0x0000000000082b1c <+328>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082b20 <+332>:   lsr     x20, x0, #5
   0x0000000000082b24 <+336>:   b       0x82a9c <fat32_open+200>

376             } else {
377
378                     DEBUG("before write pfile.\n");
   0x0000000000082b28 <+340>:   adrp    x21, 0x84000
   0x0000000000082b2c <+344>:   add     x21, x21, #0x8e8
   0x0000000000082b30 <+348>:   add     x21, x21, #0x60
   0x0000000000082b34 <+352>:   adrp    x1, 0x84000
   0x0000000000082b38 <+356>:   add     x1, x1, #0xba0
   0x0000000000082b3c <+360>:   mov     x0, x21
   0x0000000000082b40 <+364>:   bl      0x81d08 <__debug>

379
380                     memcpy(((uint16_t *)(&pfile->cluster) + 1), &dir_sub_bk.reg_dir.cluster_high, 2);
   0x0000000000082b44 <+368>:   add     x19, x29, #0x48
   0x0000000000082b48 <+372>:   mov     x2, #0x2                        // #2
   0x0000000000082b4c <+376>:   add     x1, x29, #0x5c
   0x0000000000082b50 <+380>:   add     x0, x23, x2
   0x0000000000082b54 <+384>:   bl      0x80030 <memcpy>

381                     memcpy(&pfile->cluster, &dir_sub_bk.reg_dir.cluster_low, 2);
   0x0000000000082b58 <+388>:   mov     x2, #0x2                        // #2
   0x0000000000082b5c <+392>:   add     x1, x19, #0x1a
   0x0000000000082b60 <+396>:   mov     x0, x23
   0x0000000000082b64 <+400>:   bl      0x80030 <memcpy>

382
---Type <return> to continue, or q <return> to quit---
383     //              pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
384     //                      dir_sub_bk.reg_dir.cluster_low;
385                     kprintf("+");
   0x0000000000082b68 <+404>:   adrp    x20, 0x84000
   0x0000000000082b6c <+408>:   add     x20, x20, #0xbb8
   0x0000000000082b70 <+412>:   mov     x0, x20
   0x0000000000082b74 <+416>:   bl      0x81b60 <kprintf>

386                     pfile->attribute = dir_sub_bk.reg_dir.attribute;
   0x0000000000082b78 <+420>:   ldrb    w0, [x29, #83]
   0x0000000000082b7c <+424>:   strb    w0, [x23, #16]

387                     kprintf("+");
   0x0000000000082b80 <+428>:   mov     x0, x20
   0x0000000000082b84 <+432>:   bl      0x81b60 <kprintf>

388                     pfile->pfat32 = pfat32;
   0x0000000000082b88 <+436>:   str     x22, [x23, #8]

389                     kprintf("+");
   0x0000000000082b8c <+440>:   mov     x0, x20
   0x0000000000082b90 <+444>:   bl      0x81b60 <kprintf>

390                     pfile->time_ts = dir_sub_bk.reg_dir.time_ts;
   0x0000000000082b94 <+448>:   ldrb    w0, [x29, #85]
   0x0000000000082b98 <+452>:   strb    w0, [x23, #17]

391                     kprintf("+");
   0x0000000000082b9c <+456>:   mov     x0, x20
   0x0000000000082ba0 <+460>:   bl      0x81b60 <kprintf>

392
393                     memcpy(&pfile->creation_time, &dir_sub_bk.reg_dir.creation_time, 2);
   0x0000000000082ba4 <+464>:   mov     x2, #0x2                        // #2
   0x0000000000082ba8 <+468>:   add     x1, x19, #0xe
   0x0000000000082bac <+472>:   add     x0, x23, #0x12
   0x0000000000082bb0 <+476>:   bl      0x80030 <memcpy>

394     //              pfile->creation_time = dir_sub_bk.reg_dir.creation_time;
395                     kprintf("+");
   0x0000000000082bb4 <+480>:   mov     x0, x20
   0x0000000000082bb8 <+484>:   bl      0x81b60 <kprintf>

396
397                     memcpy(&pfile->creation_date, &dir_sub_bk.reg_dir.creation_date, 2);
   0x0000000000082bbc <+488>:   mov     x2, #0x2                        // #2
   0x0000000000082bc0 <+492>:   add     x1, x19, #0x10
   0x0000000000082bc4 <+496>:   add     x0, x23, #0x14
   0x0000000000082bc8 <+500>:   bl      0x80030 <memcpy>

398     //              pfile->creation_date = dir_sub_bk.reg_dir.creation_date;
399                     kprintf("+");
   0x0000000000082bcc <+504>:   mov     x0, x20
   0x0000000000082bd0 <+508>:   bl      0x81b60 <kprintf>

400
401                     memcpy(&pfile->last_acc_date, &dir_sub_bk.reg_dir.last_acc_date, 2);
   0x0000000000082bd4 <+512>:   mov     x2, #0x2                        // #2
   0x0000000000082bd8 <+516>:   add     x1, x19, #0x12
   0x0000000000082bdc <+520>:   add     x0, x23, #0x16
   0x0000000000082be0 <+524>:   bl      0x80030 <memcpy>

402                     kprintf("+");
   0x0000000000082be4 <+528>:   mov     x0, x20
---Type <return> to continue, or q <return> to quit---
   0x0000000000082be8 <+532>:   bl      0x81b60 <kprintf>

403                     memcpy(&pfile->last_mod_time, &dir_sub_bk.reg_dir.last_mod_time, 2);
   0x0000000000082bec <+536>:   mov     x2, #0x2                        // #2
   0x0000000000082bf0 <+540>:   add     x1, x19, #0x16
   0x0000000000082bf4 <+544>:   add     x0, x23, #0x18
   0x0000000000082bf8 <+548>:   bl      0x80030 <memcpy>

404                     kprintf("+");
   0x0000000000082bfc <+552>:   mov     x0, x20
   0x0000000000082c00 <+556>:   bl      0x81b60 <kprintf>

405                     memcpy(&pfile->last_mod_date, &dir_sub_bk.reg_dir.last_mod_date, 2);
   0x0000000000082c04 <+560>:   mov     x2, #0x2                        // #2
   0x0000000000082c08 <+564>:   add     x1, x19, #0x18
   0x0000000000082c0c <+568>:   add     x0, x23, #0x1a
   0x0000000000082c10 <+572>:   bl      0x80030 <memcpy>

406                     kprintf("+\n");
   0x0000000000082c14 <+576>:   adrp    x0, 0x84000
   0x0000000000082c18 <+580>:   add     x0, x0, #0xbc0
   0x0000000000082c1c <+584>:   bl      0x81b60 <kprintf>

407                     memcpy(&pfile->size, &dir_sub_bk.reg_dir.size, 4);
   0x0000000000082c20 <+588>:   mov     x2, #0x4                        // #4
   0x0000000000082c24 <+592>:   add     x1, x19, #0x1c
   0x0000000000082c28 <+596>:   add     x0, x23, #0x1c
   0x0000000000082c2c <+600>:   bl      0x80030 <memcpy>

408     /*
409                     pfile->last_acc_date = dir_sub_bk.reg_dir.last_acc_date;
410                     kprintf("+");
411                     pfile->last_mod_time = dir_sub_bk.reg_dir.last_mod_time;
412                     kprintf("+");
413                     pfile->last_mod_date = dir_sub_bk.reg_dir.last_mod_date;
414                     kprintf("+");
415                     pfile->size = dir_sub_bk.reg_dir.size;*/
416
417                     DEBUG("after write pfile.\n");
   0x0000000000082c30 <+604>:   adrp    x1, 0x84000
   0x0000000000082c34 <+608>:   add     x1, x1, #0xbc8
   0x0000000000082c38 <+612>:   mov     x0, x21
   0x0000000000082c3c <+616>:   bl      0x81d08 <__debug>
   0x0000000000082c40 <+620>:   ldr     x24, [x29, #56]
   0x0000000000082c44 <+624>:   b       0x82c5c <fat32_open+648>

319             file *pfile = NULL;
   0x0000000000082c48 <+628>:   mov     x23, #0x0                       // #0
   0x0000000000082c4c <+632>:   ldr     x24, [x29, #56]
   0x0000000000082c50 <+636>:   b       0x82c5c <fat32_open+648>
   0x0000000000082c54 <+640>:   mov     x23, #0x0                       // #0
   0x0000000000082c58 <+644>:   ldr     x24, [x29, #56]

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
418             }
419
420     fat32_open_return:
421
422             DEBUG("pdir_entry = 0x%x\n", pdir_entry);
   0x0000000000082c5c <+648>:   ldr     x2, [x29, #104]
   0x0000000000082c60 <+652>:   adrp    x1, 0x84000
   0x0000000000082c64 <+656>:   add     x1, x1, #0xbe0
   0x0000000000082c68 <+660>:   adrp    x0, 0x84000
   0x0000000000082c6c <+664>:   add     x0, x0, #0x8e8
   0x0000000000082c70 <+668>:   add     x0, x0, #0x60
   0x0000000000082c74 <+672>:   bl      0x81d08 <__debug>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
423
424             if (pdir_entry != NULL) {
   0x0000000000082c78 <+676>:   ldr     x0, [x29, #104]
   0x0000000000082c7c <+680>:   mov     w19, #0x1                       // #1
   0x0000000000082c80 <+684>:   mov     x20, #0xffffffffffffffe8        // #-24
   0x0000000000082c84 <+688>:   cbz     x0, 0x82cd0 <fat32_open+764>

427                             kprintf("0x%x\t", *((uint32_t *)((struct mem_chuck *)pdir_entry - 1) + i));
   0x0000000000082c88 <+692>:   adrp    x21, 0x84000
   0x0000000000082c8c <+696>:   add     x21, x21, #0xbf8

429                                     kprintf("\n");
   0x0000000000082c90 <+700>:   adrp    x0, 0x84000
   0x0000000000082c94 <+704>:   add     x22, x0, #0x7e8
   0x0000000000082c98 <+708>:   b       0x82cac <fat32_open+728>
   0x0000000000082c9c <+712>:   mov     x0, x22
   0x0000000000082ca0 <+716>:   bl      0x81b60 <kprintf>
   0x0000000000082ca4 <+720>:   add     x20, x20, #0x4
   0x0000000000082ca8 <+724>:   add     w19, w19, #0x1

427                             kprintf("0x%x\t", *((uint32_t *)((struct mem_chuck *)pdir_entry - 1) + i));
   0x0000000000082cac <+728>:   ldr     x0, [x29, #104]
   0x0000000000082cb0 <+732>:   ldr     w1, [x0, x20]
   0x0000000000082cb4 <+736>:   mov     x0, x21
   0x0000000000082cb8 <+740>:   bl      0x81b60 <kprintf>

428                             if (i + 1 % 8 == 0)
   0x0000000000082cbc <+744>:   cbz     w19, 0x82c9c <fat32_open+712>

426                     for (int i = 0; i < 128; i++) {
   0x0000000000082cc0 <+748>:   cmp     w19, #0x7f
   0x0000000000082cc4 <+752>:   b.le    0x82ca4 <fat32_open+720>

430                     }
431
432                     free(pdir_entry);
   0x0000000000082cc8 <+756>:   ldr     x0, [x29, #104]
   0x0000000000082ccc <+760>:   bl      0x80878 <free>

433             }
434
435             return pfile;
436     }
   0x0000000000082cd0 <+764>:   mov     x0, x23
   0x0000000000082cd4 <+768>:   ldp     x19, x20, [sp, #16]
   0x0000000000082cd8 <+772>:   ldp     x21, x22, [sp, #32]
   0x0000000000082cdc <+776>:   ldr     x23, [sp, #48]
   0x0000000000082ce0 <+780>:   ldp     x29, x30, [sp]
   0x0000000000082ce4 <+784>:   add     sp, sp, #0x470
   0x0000000000082ce8 <+788>:   ret

369             pfile = (file *)malloc(sizeof(file));
   0x0000000000082cec <+792>:   mov     x0, #0x20                       // #32
   0x0000000000082cf0 <+796>:   bl      0x80760 <malloc>
   0x0000000000082cf4 <+800>:   mov     x23, x0

370             if (pfile == NULL)
   0x0000000000082cf8 <+804>:   cbnz    x0, 0x82b28 <fat32_open+340>
   0x0000000000082cfc <+808>:   ldr     x24, [x29, #56]
   0x0000000000082d00 <+812>:   b       0x82c5c <fat32_open+648>

369             pfile = (file *)malloc(sizeof(file));
---Type <return> to continue, or q <return> to quit---
   0x0000000000082d04 <+816>:   mov     x0, #0x20                       // #32
   0x0000000000082d08 <+820>:   bl      0x80760 <malloc>
   0x0000000000082d0c <+824>:   mov     x23, x0

370             if (pfile == NULL)
   0x0000000000082d10 <+828>:   cbz     x0, 0x82c5c <fat32_open+648>

371                     goto fat32_open_return;
372
373             if (is_root) {
374                     pfile->cluster = pfat32->root_cluster;
   0x0000000000082d14 <+832>:   ldr     w0, [x22, #176]
   0x0000000000082d18 <+836>:   str     w0, [x23]

375                     pfile->attribute = 0x10;
   0x0000000000082d1c <+840>:   mov     w0, #0x10                       // #16
   0x0000000000082d20 <+844>:   strb    w0, [x23, #16]
   0x0000000000082d24 <+848>:   b       0x82c5c <fat32_open+648>
