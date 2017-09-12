.class Lcom/android/internal/os/ZygoteInitInjector;
.super Ljava/lang/Object;
.source "ZygoteInitInjector.java"


# static fields
.field private static final PRELOADED_MIUI_CLASSES:Ljava/lang/String; = "preloaded-miui-classes"

.field private static final SECOND_ZYGOTE_NAME:Ljava/lang/String; = "zygote_secondary"

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static processName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static preloadGralloc()V
    .locals 9

    .prologue
    .line 178
    const-string v3, "/system/lib/hw/gralloc."

    .line 179
    .local v3, "halPrefix32":Ljava/lang/String;
    const-string v4, "/system/lib64/hw/gralloc."

    .line 180
    .local v4, "halPrefix64":Ljava/lang/String;
    const-string v6, "ro.board.platform"

    const-string v7, "default"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "platform":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "gralloc32":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "gralloc64":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 186
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed load gralloc lib : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static preloadMiuiClasses()V
    .locals 24

    .prologue
    .line 77
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    .line 78
    .local v10, "runtime":Ldalvik/system/VMRuntime;
    const-string v17, "Zygote"

    const-string v18, "Preload miui classes..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const-string v18, "preloaded-miui-classes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 81
    .local v8, "is":Ljava/io/InputStream;
    if-nez v8, :cond_0

    .line 82
    const-string v17, "Zygote"

    const-string v18, "Couldn\'t find preloaded-miui-classes."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v17, "Zygote"

    const-string v18, "Preloading miui classes..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 88
    .local v12, "startTime":J
    const-class v17, Lcom/android/internal/os/ZygoteInit;

    const-string v18, "UNPRIVILEGED_GID"

    const-class v19, Ljava/lang/Integer;

    invoke-static/range {v17 .. v19}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v15

    .line 90
    .local v15, "unprivileged_gid":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const-class v17, Lcom/android/internal/os/ZygoteInit;

    const-string v18, "UNPRIVILEGED_UID"

    const-class v19, Ljava/lang/Integer;

    invoke-static/range {v17 .. v19}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v16

    .line 92
    .local v16, "unprivileged_uid":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v15}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 94
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 99
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    .line 100
    .local v6, "defaultUtilization":F
    const v17, 0x3f4ccccd    # 0.8f

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 103
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 104
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 105
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 108
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x100

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 111
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 113
    .local v5, "count":I
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 115
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 116
    const-string v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-nez v17, :cond_1

    .line 124
    :try_start_1
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    const-class v17, Lcom/android/internal/os/ZygoteInit;

    const-string v18, "PRELOAD_GC_THRESHOLD"

    const-class v19, Ljava/lang/Integer;

    invoke-static/range {v17 .. v19}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v14

    .line 127
    .local v14, "threshold":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v18

    invoke-virtual {v14}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 132
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 133
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 134
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 137
    .end local v14    # "threshold":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v17, "Zygote"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Class not found for preloading: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 155
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    .end local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 156
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v17, "Zygote"

    const-string v18, "Error reading preloaded-miui-classes."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-virtual {v10, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 163
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 165
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 168
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v15}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 170
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto/16 :goto_0

    .line 139
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v9    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_4
    const-string v17, "Zygote"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem preloading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 158
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v5    # "count":I
    .end local v7    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v9    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object/from16 v18, v17

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-virtual {v10, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 163
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 165
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 168
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    const-string v20, "setEffectiveGroup"

    const-class v21, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v15}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v22, v23

    invoke-static/range {v19 .. v22}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 170
    const-class v19, Lcom/android/internal/os/ZygoteInit;

    const-string v20, "setEffectiveGroup"

    const-class v21, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v16 .. v16}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v22, v23

    invoke-static/range {v19 .. v22}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    throw v18

    .line 141
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v9    # "line":Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 142
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v17, "Zygote"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error preloading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    instance-of v0, v11, Ljava/lang/Error;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 144
    check-cast v11, Ljava/lang/Error;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 146
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v0, v11, Ljava/lang/RuntimeException;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 147
    check-cast v11, Ljava/lang/RuntimeException;

    .end local v11    # "t":Ljava/lang/Throwable;
    throw v11

    .line 149
    .restart local v11    # "t":Ljava/lang/Throwable;
    :cond_4
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 153
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_5
    const-string v17, "Zygote"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "...preloaded "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " classes in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-virtual {v10, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 163
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 165
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 168
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v15}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 170
    const-class v18, Lcom/android/internal/os/ZygoteInit;

    const-string v19, "setEffectiveGroup"

    const-class v20, Ljava/lang/Void;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v21, v22

    invoke-static/range {v18 .. v21}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    goto/16 :goto_0
.end method

.method static preloadMiuiFeatures()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v1, "miui.util.MiuiFeatureUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Zygote"

    const-string v2, "Failed to load class miui.util.MiuiFeatureUtils"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static preloadMiuiResources(Landroid/content/res/Resources;)V
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 34
    const-string/jumbo v3, "zygote_secondary"

    sget-object v6, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "Zygote"

    const-string v6, "skip the second zygote 32 preload miui resource"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 41
    .local v4, "startTime":J
    sget v3, Lmiui/R$array;->preloaded_drawables:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 42
    .local v1, "ar":Landroid/content/res/TypedArray;
    const-class v3, Lcom/android/internal/os/ZygoteInit;

    const-string v6, "preloadDrawables"

    const-class v7, Ljava/lang/Integer;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v3, v6, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 44
    .local v2, "result":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 45
    .local v0, "N":I
    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    const-string v3, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "...preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " miui sdk resources in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiFeatures()V

    goto :goto_0
.end method

.method static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "zygote_secondary"

    sget-object v1, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "themeutils_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    const-string v0, "shell"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    const-string v0, "shell_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method static setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/android/internal/os/ZygoteInitInjector;->processName:Ljava/lang/String;

    .line 66
    return-void
.end method
