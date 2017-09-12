.class public Lmiui/util/DumpBitmapInfoUtils;
.super Ljava/lang/Object;
.source "DumpBitmapInfoUtils.java"


# static fields
.field static final ENABLE:Z

.field static sBitmapThresholdSize:I

.field static sBitmapTitles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrProcess:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "DumpBitmapInfo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    .line 40
    sget-boolean v0, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBitmapInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 40
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v32, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v32, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/16 v17, 0x0

    .line 71
    .local v17, "isDumpBitmap":Z
    const/16 v18, 0x0

    .line 72
    .local v18, "isExportBitmap":Z
    const/16 v20, 0x0

    .line 73
    .local v20, "isNoGC":Z
    const/16 v19, 0x0

    .line 74
    .local v19, "isIncludePreload":Z
    const/16 v28, 0x0

    .line 75
    .local v28, "recycleBmp":I
    move-object/from16 v5, p1

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v4, v5, v16

    .line 76
    .local v4, "arg":Ljava/lang/String;
    const-string v32, "--bitmap"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2

    const-string v32, "-b"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    :cond_2
    const/16 v17, 0x1

    .line 77
    :cond_3
    const-string v32, "--exportbitmap"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "-e"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5

    :cond_4
    const/16 v18, 0x1

    .line 78
    :cond_5
    const-string v32, "--nogc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    const/16 v20, 0x1

    .line 79
    :cond_6
    const-string v32, "--includepreload"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    const/16 v19, 0x1

    .line 80
    :cond_7
    const-string v32, "--recycle:"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 81
    const-string v32, "--recycle:0x"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 82
    const-string v32, "--recycle:0x"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x10

    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 75
    :cond_8
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 84
    :cond_9
    const-string v32, "--recycle:"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x10

    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    goto :goto_2

    .line 88
    .end local v4    # "arg":Ljava/lang/String;
    :cond_a
    if-nez v17, :cond_b

    if-eqz v18, :cond_0

    .line 90
    :cond_b
    if-nez v20, :cond_c

    .line 91
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 95
    :cond_c
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v32

    if-eqz v32, :cond_d

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_d

    const-string v32, "system"

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 98
    :cond_d
    new-instance v12, Ljava/io/File;

    const-string v32, "/data/system/_exportbitmap/"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v12, "exportBitmapFolder":Ljava/io/File;
    :goto_3
    if-eqz v18, :cond_e

    .line 104
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v32

    if-nez v32, :cond_11

    .line 105
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_e
    :goto_4
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 116
    .local v14, "fout":Ljava/io/FileOutputStream;
    new-instance v27, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v27, "pw":Ljava/io/PrintWriter;
    const-wide/16 v30, 0x0

    .line 119
    .local v30, "totalSize":J
    const/4 v6, 0x0

    .line 122
    .local v6, "bitmapCount":I
    :try_start_0
    sget-object v33, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v23, "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    sget-object v32, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual/range {v32 .. v32}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 125
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    new-instance v25, Ljava/util/AbstractMap$SimpleEntry;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/util/Map$Entry;)V

    .line 126
    .local v25, "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_f

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 128
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v23    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .end local v25    # "newEntry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v32

    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    :catchall_1
    move-exception v32

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->flush()V

    throw v32

    .line 100
    .end local v6    # "bitmapCount":I
    .end local v12    # "exportBitmapFolder":Ljava/io/File;
    .end local v14    # "fout":Ljava/io/FileOutputStream;
    .end local v27    # "pw":Ljava/io/PrintWriter;
    .end local v30    # "totalSize":J
    .local v16, "i$":I
    :cond_10
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "_exportbitmap/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v12    # "exportBitmapFolder":Ljava/io/File;
    goto :goto_3

    .line 108
    :cond_11
    :try_start_3
    invoke-static {v12}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 109
    :catch_0
    move-exception v11

    .line 110
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 128
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v6    # "bitmapCount":I
    .restart local v14    # "fout":Ljava/io/FileOutputStream;
    .local v16, "i$":Ljava/util/Iterator;
    .restart local v23    # "listBitmapTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;>;"
    .restart local v27    # "pw":Ljava/io/PrintWriter;
    .restart local v30    # "totalSize":J
    :cond_12
    :try_start_4
    monitor-exit v33
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    :try_start_5
    new-instance v32, Lmiui/util/DumpBitmapInfoUtils$1;

    invoke-direct/range {v32 .. v32}, Lmiui/util/DumpBitmapInfoUtils$1;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    const-string v32, "All big bitmaps (debug.bitmap_threshold_size = %d k):\n"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    sget v35, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v26

    .line 140
    .local v26, "preloadDrawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_13
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_19

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 141
    .local v8, "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 142
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v32

    if-nez v32, :cond_13

    .line 144
    const/16 v21, 0x0

    .line 145
    .local v21, "isPreload":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    invoke-virtual/range {v26 .. v26}, Landroid/util/LongSparseArray;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v15, v0, :cond_14

    .line 146
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 147
    .local v9, "c":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {v9}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;

    move-result-object v32

    move-object/from16 v0, v32

    if-ne v0, v7, :cond_18

    .line 148
    const/16 v21, 0x1

    .line 152
    .end local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_14
    if-eqz v21, :cond_15

    if-eqz v19, :cond_13

    .line 154
    :cond_15
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    .line 155
    add-int/lit8 v6, v6, 0x1

    .line 157
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-static {v7, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v24

    .line 158
    .local v24, "msg":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "  "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    if-eqz v18, :cond_16

    .line 162
    :try_start_6
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    const/16 v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v21

    invoke-static {v7, v0, v1, v2}, Lmiui/util/DumpBitmapInfoUtils;->getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, "fileName":Ljava/lang/String;
    new-instance v29, Ljava/io/FileOutputStream;

    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v29, "stream":Ljava/io/FileOutputStream;
    sget-object v32, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v33, 0x64

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 165
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 172
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v29    # "stream":Ljava/io/FileOutputStream;
    :cond_16
    :goto_8
    if-eqz v28, :cond_17

    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 173
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    const-string v32, "  now recycled."

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    :cond_17
    const/16 v32, 0xa

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto/16 :goto_6

    .line 145
    .end local v24    # "msg":Ljava/lang/String;
    .restart local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 166
    .end local v9    # "c":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v24    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 167
    .restart local v11    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 168
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 180
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "bmpTitle":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Ljava/lang/CharSequence;>;"
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v21    # "isPreload":Z
    .end local v24    # "msg":Ljava/lang/String;
    :cond_19
    const-string v32, "Total count: %d, size: %dM\n"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const-wide/16 v36, 0x400

    div-long v36, v30, v36

    const-wide/16 v38, 0x400

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 181
    if-eqz v18, :cond_1a

    .line 182
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Export bitmap. Path: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    const-string v32, "DumpBitmapInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Export bitmaps finished. Path: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1a
    const-string v32, "\n"

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 187
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0
.end method

.method private static formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isPreload"    # Z

    .prologue
    .line 240
    const-string v0, "0x%8x %,6dk %dx%d %s %s"

    .line 241
    .local v0, "msgFormat":Ljava/lang/String;
    const-string v2, "0x%8x %,6dk %dx%d %s %s"

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const-string v1, "preload"

    :goto_0
    aput-object v1, v3, v4

    const/4 v4, 0x5

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getBitmapFromDrawableState(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "c"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .prologue
    const/4 v5, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "clsName":Ljava/lang/String;
    const-string v4, "BitmapState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mBitmap"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 223
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 235
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 225
    .restart local v0    # "clsName":Ljava/lang/String;
    :cond_0
    const-string v4, "NinePatchState"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mNinePatch"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 227
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/NinePatch;

    .line 229
    .local v3, "np":Landroid/graphics/NinePatch;
    if-nez v3, :cond_1

    move-object v4, v5

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "np":Landroid/graphics/NinePatch;
    :cond_2
    move-object v4, v5

    .line 232
    goto :goto_0

    .line 233
    .end local v0    # "clsName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v5

    .line 235
    goto :goto_0
.end method

.method private static getBitmapMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "forFileName"    # Z
    .param p3, "isPreload"    # Z

    .prologue
    const/16 v6, 0x2d

    .line 202
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "msg":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v3, v1

    .line 215
    :goto_0
    return-object v3

    .line 208
    :cond_0
    const/16 v0, 0xf0

    .line 209
    .local v0, "maxFileNameLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v2, v3, -0xf0

    .line 210
    .local v2, "overLength":I
    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 211
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p0, p1, p3}, Lmiui/util/DumpBitmapInfoUtils;->formatMsg(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static isTrackingNeeded(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 193
    const-string v1, "debug.bitmap_threshold_size"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lmiui/util/DumpBitmapInfoUtils;->sCurrProcess:I

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x100

    .line 198
    .local v0, "size":I
    sget v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapThresholdSize:I

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putBitmap(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    sget-boolean v1, Lmiui/util/DumpBitmapInfoUtils;->ENABLE:Z

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-static {p0}, Lmiui/util/DumpBitmapInfoUtils;->isTrackingNeeded(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v2, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    sget-object v1, Lmiui/util/DumpBitmapInfoUtils;->sBitmapTitles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
