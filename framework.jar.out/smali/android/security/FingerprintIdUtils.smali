.class public Landroid/security/FingerprintIdUtils;
.super Ljava/lang/Object;
.source "FingerprintIdUtils.java"


# static fields
.field private static final FINGERPRINTID_USERID_TABLE:Ljava/lang/String; = "fingerid_user_map.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFingerprintById(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fingerprintId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Landroid/security/FingerprintIdUtils;->getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    .line 33
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-static {p0, v0}, Landroid/security/FingerprintIdUtils;->putUserFingerprintIds(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 37
    return-void
.end method

.method private static getPathByUserId(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "fingerid_user_map.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    return-object v0
.end method

.method public static getUserFingerprintIds(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Landroid/security/FingerprintIdUtils;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v1

    invoke-static {p1}, Landroid/security/FingerprintIdUtils;->getPathByUserId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/FingerprintIdUtils;->str2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static map2Str(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 58
    .local v4, "value":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static putUserFingerprintIds(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "fingeridMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Landroid/security/FingerprintIdUtils;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/security/FingerprintIdUtils;->getPathByUserId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/security/FingerprintIdUtils;->map2Str(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static str2Map(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "packageArr":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    .line 73
    aget-object v4, v3, v1

    .line 74
    .local v4, "pair":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 75
    .local v0, "equalIndex":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "pairKey":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "pairValue":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "equalIndex":I
    .end local v1    # "i":I
    .end local v3    # "packageArr":[Ljava/lang/String;
    .end local v4    # "pair":Ljava/lang/String;
    .end local v5    # "pairKey":Ljava/lang/String;
    .end local v6    # "pairValue":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
