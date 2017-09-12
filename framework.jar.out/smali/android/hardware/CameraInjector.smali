.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# static fields
.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 36
    const-string/jumbo v5, "remove_lower_perview_size_list"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v2, "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string v5, "extra_min_preview_size"

    const v6, 0xe1000

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "minSize":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 41
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v1, v5, :cond_0

    .line 42
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 46
    const-string/jumbo v5, "preview-size-values"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "minSize":I
    .end local v2    # "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 66
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "processName":Ljava/lang/String;
    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "whitelist":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 25
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 26
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    const/4 v6, 0x1

    .line 31
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return v6

    .line 25
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static setParametersEx(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 54
    const-string v0, "add_still_beautify_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "xiaomi-still-beautify-values"

    const-string v1, "extra_still_beautify_value"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
