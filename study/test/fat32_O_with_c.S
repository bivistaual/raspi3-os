{
   0x00000000000829d4 <+0>:     stp     x29, x30, [sp, #-128]!
   0x00000000000829d8 <+4>:     mov     x29, sp
   0x00000000000829dc <+8>:     str     x19, [sp, #16]
   0x00000000000829e0 <+12>:    str     x22, [sp, #40]
   0x00000000000829e4 <+16>:    str     x24, [sp, #56]
   0x00000000000829e8 <+20>:    mov     x22, x0
   0x00000000000829ec <+24>:    mov     x19, x1

313             char *p, *path_part;
314             dir_entry_t *pdir_entry = NULL;
   0x00000000000829f0 <+28>:    str     xzr, [x29, #120]

320         
321         memset(&dir_sub_bk, 0, sizeof(dir_entry_t));
   0x00000000000829f4 <+32>:    mov     x2, #0x20                       // #32
   0x00000000000829f8 <+36>:    mov     w1, #0x0                        // #0
   0x00000000000829fc <+40>:    add     x0, x29, #0x58
   0x0000000000082a00 <+44>:    bl      0x80318 <memset>

322
323             if (path == NULL)
   0x0000000000082a04 <+48>:    cbz     x19, 0x82a6c <fat32_open+152>

325
326             // make a copy of constant path string
327
328             p = (char *)malloc(sizeof(char) * (strlen(path) + 1));
   0x0000000000082a08 <+52>:    mov     x0, x19
   0x0000000000082a0c <+56>:    bl      0x80050 <strlen>
   0x0000000000082a10 <+60>:    add     x0, x0, #0x1
   0x0000000000082a14 <+64>:    bl      0x80760 <malloc>
   0x0000000000082a18 <+68>:    mov     x24, x0

329             if (p == NULL)
   0x0000000000082a1c <+72>:    cbz     x0, 0x82a94 <fat32_open+192>

331             strcpy(p, path);
   0x0000000000082a20 <+76>:    mov     x1, x19
   0x0000000000082a24 <+80>:    mov     x0, x24
   0x0000000000082a28 <+84>:    bl      0x800b8 <strcpy>

332
333             path_part = strtok(p, "/");
   0x0000000000082a2c <+88>:    adrp    x1, 0x83000
   0x0000000000082a30 <+92>:    add     x1, x1, #0xc50
   0x0000000000082a34 <+96>:    mov     x0, x24
   0x0000000000082a38 <+100>:   bl      0x80218 <strtok>
   0x0000000000082a3c <+104>:   mov     x19, x0








334             while (path_part != NULL) {
   0x0000000000082a40 <+108>:   cbz     x0, 0x82c1c <fat32_open+584>
   0x0000000000082a44 <+112>:   stp     x20, x21, [x29, #24]
   0x0000000000082a48 <+116>:   str     x23, [x29, #48]
   0x0000000000082a4c <+120>:   str     x25, [x29, #64]












318             bool is_root = true;
   0x0000000000082a50 <+124>:   mov     w1, #0x1                        // #1

353
354                             // read next directory entry
355                             dirs = fat32_read_chain(pfat32,
---Type <return> to continue, or q <return> to quit---
   0x0000000000082a54 <+128>:   add     x23, x29, #0x78

342                             DEBUG("Root cluster read.\n");
   0x0000000000082a58 <+132>:   adrp    x25, 0x84000
   0x0000000000082a5c <+136>:   adrp    x21, 0x84000
   0x0000000000082a60 <+140>:   add     x21, x21, #0x820
   0x0000000000082a64 <+144>:   add     x21, x21, #0x60
   0x0000000000082a68 <+148>:   b       0x82b24 <fat32_open+336>

324                     panic("path is NULL");
   0x0000000000082a6c <+152>:   adrp    x3, 0x84000
   0x0000000000082a70 <+156>:   add     x3, x3, #0xa90
   0x0000000000082a74 <+160>:   adrp    x2, 0x84000
   0x0000000000082a78 <+164>:   add     x2, x2, #0x820
   0x0000000000082a7c <+168>:   add     x2, x2, #0x60
   0x0000000000082a80 <+172>:   mov     w1, #0x144                      // #324
   0x0000000000082a84 <+176>:   adrp    x0, 0x84000
   0x0000000000082a88 <+180>:   add     x0, x0, #0x920
   0x0000000000082a8c <+184>:   bl      0x81bd8 <__panic>
   0x0000000000082a90 <+188>:   b       0x82a08 <fat32_open+52>

330                     panic("Run out of memory!\n");
   0x0000000000082a94 <+192>:   adrp    x3, 0x84000
   0x0000000000082a98 <+196>:   add     x3, x3, #0xaa0
   0x0000000000082a9c <+200>:   adrp    x2, 0x84000
   0x0000000000082aa0 <+204>:   add     x2, x2, #0x820
   0x0000000000082aa4 <+208>:   add     x2, x2, #0x60
   0x0000000000082aa8 <+212>:   mov     w1, #0x14a                      // #330
   0x0000000000082aac <+216>:   adrp    x0, 0x84000
   0x0000000000082ab0 <+220>:   add     x0, x0, #0x920
   0x0000000000082ab4 <+224>:   bl      0x81bd8 <__panic>
   0x0000000000082ab8 <+228>:   b       0x82a20 <fat32_open+76>

337
338                             dirs = fat32_read_chain(pfat32,
   0x0000000000082abc <+232>:   mov     x2, x23
   0x0000000000082ac0 <+236>:   ldr     w1, [x22, #176]
   0x0000000000082ac4 <+240>:   mov     x0, x22
   0x0000000000082ac8 <+244>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082acc <+248>:   lsr     x20, x0, #5

339                                             pfat32->root_cluster,
340                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
341
342                             DEBUG("Root cluster read.\n");
   0x0000000000082ad0 <+252>:   add     x1, x25, #0xab8
   0x0000000000082ad4 <+256>:   mov     x0, x21
   0x0000000000082ad8 <+260>:   bl      0x81d08 <__debug>

358                                             (char **)(&pdir_entry)) / sizeof(dir_entry_t);
359                     }
360
361                     DEBUG("Finding sub-directory \"%s\".\n", path_part);
   0x0000000000082adc <+264>:   mov     x2, x19
   0x0000000000082ae0 <+268>:   adrp    x1, 0x84000
   0x0000000000082ae4 <+272>:   add     x1, x1, #0xad0
   0x0000000000082ae8 <+276>:   mov     x0, x21
   0x0000000000082aec <+280>:   bl      0x81d08 <__debug>




















362
363                     pdir_sub = fat32_find_entry(path_part, pdir_entry, dirs);
   0x0000000000082af0 <+284>:   mov     x2, x20
   0x0000000000082af4 <+288>:   ldr     x1, [x29, #120]
   0x0000000000082af8 <+292>:   mov     x0, x19
---Type <return> to continue, or q <return> to quit---
   0x0000000000082afc <+296>:   bl      0x828b8 <fat32_find_entry>
   0x0000000000082b00 <+300>:   mov     x20, x0

364
365                     // no corresponding entry in directory entries
366                     if (pdir_sub == NULL)
   0x0000000000082b04 <+304>:   cbz     x0, 0x82be0 <fat32_open+524>

367                             goto fat32_open_return;
368
369                     path_part = strtok(NULL, "/");
   0x0000000000082b08 <+308>:   adrp    x1, 0x83000
   0x0000000000082b0c <+312>:   add     x1, x1, #0xc50
   0x0000000000082b10 <+316>:   mov     x0, #0x0                        // #0
   0x0000000000082b14 <+320>:   bl      0x80218 <strtok>
   0x0000000000082b18 <+324>:   mov     x19, x0
   0x0000000000082b1c <+328>:   mov     w1, #0x0                        // #0
















334             while (path_part != NULL) {
   0x0000000000082b20 <+332>:   cbz     x0, 0x82c40 <fat32_open+620>

335                     // determine to read root cluster or sub-directory cluster
336                     if (is_root) {
   0x0000000000082b24 <+336>:   cbnz    w1, 0x82abc <fat32_open+232>

343
344                             is_root = false;
345                     } else {
346                             // open fail when the last entry found is not a directory
347                             if (!FAT32_IS_DIR(pdir_sub->reg_dir.attribute))
   0x0000000000082b28 <+340>:   ldrb    w0, [x20, #11]
   0x0000000000082b2c <+344>:   tbz     w0, #4, 0x82bcc <fat32_open+504>

348                                     goto fat32_open_return;
349
350                             // copy the directory entry found and free current entries
351                             dir_sub_bk = *pdir_sub;
   0x0000000000082b30 <+348>:   ldp     x0, x1, [x20]
   0x0000000000082b34 <+352>:   stp     x0, x1, [x29, #88]
   0x0000000000082b38 <+356>:   ldp     x0, x1, [x20, #16]
   0x0000000000082b3c <+360>:   stp     x0, x1, [x29, #104]

352                             free(pdir_entry);
   0x0000000000082b40 <+364>:   ldr     x0, [x29, #120]
   0x0000000000082b44 <+368>:   bl      0x80878 <free>

356                                             (uint32_t)(dir_sub_bk.reg_dir.cluster_high << 16) +
   0x0000000000082b48 <+372>:   ldrh    w1, [x29, #108]

357                                             dir_sub_bk.reg_dir.cluster_low,
   0x0000000000082b4c <+376>:   ldrh    w0, [x29, #114]

355                             dirs = fat32_read_chain(pfat32,
   0x0000000000082b50 <+380>:   mov     x2, x23
   0x0000000000082b54 <+384>:   add     w1, w0, w1, lsl #16
   0x0000000000082b58 <+388>:   mov     x0, x22
   0x0000000000082b5c <+392>:   bl      0x824b8 <fat32_read_chain>
   0x0000000000082b60 <+396>:   lsr     x20, x0, #5
   0x0000000000082b64 <+400>:   b       0x82adc <fat32_open+264>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
379             } else {
380                     pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
   0x0000000000082b68 <+404>:   ldrh    w0, [x29, #108]

---Type <return> to continue, or q <return> to quit---
381                             dir_sub_bk.reg_dir.cluster_low;
   0x0000000000082b6c <+408>:   ldrh    w1, [x29, #114]

380                     pfile->cluster = ((uint32_t)(dir_sub_bk.reg_dir.cluster_high) << 16) +
   0x0000000000082b70 <+412>:   add     w0, w1, w0, lsl #16
   0x0000000000082b74 <+416>:   str     w0, [x19]

382                     pfile->attribute = dir_sub_bk.reg_dir.attribute;
   0x0000000000082b78 <+420>:   ldrb    w0, [x29, #99]
   0x0000000000082b7c <+424>:   strb    w0, [x19, #16]

383                     pfile->pfat32 = pfat32;
   0x0000000000082b80 <+428>:   str     x22, [x19, #8]

384                     pfile->time_ts = dir_sub_bk.reg_dir.time_ts;
   0x0000000000082b84 <+432>:   ldrb    w0, [x29, #101]
   0x0000000000082b88 <+436>:   strb    w0, [x19, #17]

385                     pfile->creation_time = dir_sub_bk.reg_dir.creation_time;
   0x0000000000082b8c <+440>:   ldrh    w0, [x29, #102]
   0x0000000000082b90 <+444>:   strh    w0, [x19, #18]

386                     pfile->creation_date = dir_sub_bk.reg_dir.creation_date;
   0x0000000000082b94 <+448>:   ldrh    w0, [x29, #104]
   0x0000000000082b98 <+452>:   strh    w0, [x19, #20]

387                     pfile->last_acc_date = dir_sub_bk.reg_dir.last_acc_date;
   0x0000000000082b9c <+456>:   ldrh    w0, [x29, #106]
   0x0000000000082ba0 <+460>:   strh    w0, [x19, #22]

388                     pfile->last_mod_time = dir_sub_bk.reg_dir.last_mod_time;
   0x0000000000082ba4 <+464>:   ldrh    w0, [x29, #110]
   0x0000000000082ba8 <+468>:   strh    w0, [x19, #24]

389                     pfile->last_mod_date = dir_sub_bk.reg_dir.last_mod_date;
   0x0000000000082bac <+472>:   ldrh    w0, [x29, #112]
   0x0000000000082bb0 <+476>:   strh    w0, [x19, #26]

390                     pfile->size = dir_sub_bk.reg_dir.size;
   0x0000000000082bb4 <+480>:   ldr     w0, [x29, #116]
   0x0000000000082bb8 <+484>:   str     w0, [x19, #28]
   0x0000000000082bbc <+488>:   ldp     x20, x21, [x29, #24]
   0x0000000000082bc0 <+492>:   ldr     x23, [x29, #48]
   0x0000000000082bc4 <+496>:   ldr     x25, [x29, #64]
   0x0000000000082bc8 <+500>:   b       0x82bf0 <fat32_open+540>

319             file *pfile = NULL;
   0x0000000000082bcc <+504>:   mov     x19, #0x0                       // #0
   0x0000000000082bd0 <+508>:   ldp     x20, x21, [x29, #24]
   0x0000000000082bd4 <+512>:   ldr     x23, [x29, #48]
   0x0000000000082bd8 <+516>:   ldr     x25, [x29, #64]
   0x0000000000082bdc <+520>:   b       0x82bf0 <fat32_open+540>
   0x0000000000082be0 <+524>:   mov     x19, #0x0                       // #0
   0x0000000000082be4 <+528>:   ldp     x20, x21, [x29, #24]
   0x0000000000082be8 <+532>:   ldr     x23, [x29, #48]
   0x0000000000082bec <+536>:   ldr     x25, [x29, #64]

391             }
392
393     fat32_open_return:
394
395             free(p);
   0x0000000000082bf0 <+540>:   mov     x0, x24
   0x0000000000082bf4 <+544>:   bl      0x80878 <free>
---Type <return> to continue, or q <return> to quit---

396             if (pdir_entry != NULL) {
   0x0000000000082bf8 <+548>:   ldr     x0, [x29, #120]
   0x0000000000082bfc <+552>:   cbz     x0, 0x82c04 <fat32_open+560>

397                     free(pdir_entry);
   0x0000000000082c00 <+556>:   bl      0x80878 <free>

398             }
399
400             return pfile;
401     }
   0x0000000000082c04 <+560>:   mov     x0, x19
   0x0000000000082c08 <+564>:   ldr     x19, [sp, #16]
   0x0000000000082c0c <+568>:   ldr     x22, [sp, #40]
   0x0000000000082c10 <+572>:   ldr     x24, [sp, #56]
   0x0000000000082c14 <+576>:   ldp     x29, x30, [sp], #128
   0x0000000000082c18 <+580>:   ret

372             pfile = (file *)malloc(sizeof(file));
   0x0000000000082c1c <+584>:   mov     x0, #0x20                       // #32
   0x0000000000082c20 <+588>:   bl      0x80760 <malloc>
   0x0000000000082c24 <+592>:   mov     x19, x0

373             if (pfile == NULL)
   0x0000000000082c28 <+596>:   cbz     x0, 0x82bf0 <fat32_open+540>

374                     goto fat32_open_return;
375
376             if (is_root) {
377                     pfile->cluster = pfat32->root_cluster;
   0x0000000000082c2c <+600>:   ldr     w0, [x22, #176]
   0x0000000000082c30 <+604>:   str     w0, [x19]

378                     pfile->attribute = 0x10;
   0x0000000000082c34 <+608>:   mov     w0, #0x10                       // #16
   0x0000000000082c38 <+612>:   strb    w0, [x19, #16]
   0x0000000000082c3c <+616>:   b       0x82bf0 <fat32_open+540>

372             pfile = (file *)malloc(sizeof(file));
   0x0000000000082c40 <+620>:   mov     x0, #0x20                       // #32
   0x0000000000082c44 <+624>:   bl      0x80760 <malloc>
   0x0000000000082c48 <+628>:   mov     x19, x0

373             if (pfile == NULL)
   0x0000000000082c4c <+632>:   cbnz    x0, 0x82b68 <fat32_open+404>
   0x0000000000082c50 <+636>:   ldp     x20, x21, [x29, #24]
   0x0000000000082c54 <+640>:   ldr     x23, [x29, #48]
   0x0000000000082c58 <+644>:   ldr     x25, [x29, #64]
   0x0000000000082c5c <+648>:   b       0x82bf0 <fat32_open+540>
