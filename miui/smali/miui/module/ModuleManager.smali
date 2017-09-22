.class public Lmiui/module/ModuleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/module/ModuleManager$ModuleLoadListener;
    }
.end annotation


# static fields
.field private static final Aw:Lmiui/module/ModuleManager;

.field private static final Ax:Ljava/lang/String; = "modules"

.field private static final Ay:Ljava/lang/String; = "modules-temp"


# instance fields
.field private AA:Ljava/io/File;

.field private AB:Lcom/miui/internal/component/module/ModuleLoader;

.field private AH:Lmiui/module/ModuleManager$ModuleLoadListener;

.field private Az:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lmiui/module/ModuleManager;

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lmiui/module/ModuleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/module/ModuleManager;->Aw:Lmiui/module/ModuleManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lmiui/module/ModuleManager;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lmiui/module/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiui/module/ModuleManager;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    .line 55
    iget-object v0, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56
    iget-object v0, p0, Lmiui/module/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiui/module/ModuleManager;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lmiui/module/ModuleManager;->AA:Ljava/io/File;

    .line 57
    iget-object v0, p0, Lmiui/module/ModuleManager;->AA:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoader;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/internal/component/module/ModuleFolder;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/internal/component/module/ModuleFolder;

    iget-object v4, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    iget-object v5, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    invoke-direct {v3, v4, v5}, Lcom/miui/internal/component/module/ModuleFolder;-><init>(Ljava/io/File;Ljava/io/File;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoader;-><init>([Lcom/miui/internal/component/module/ModuleFolder;)V

    iput-object v0, p0, Lmiui/module/ModuleManager;->AB:Lcom/miui/internal/component/module/ModuleLoader;

    .line 59
    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 197
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFail(Ljava/lang/String;I)V

    .line 201
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 152
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 156
    invoke-direct {p0, p2}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    return v7

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 164
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 165
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 166
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 168
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 170
    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    :cond_3
    invoke-static {v4}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v5}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private cf()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "miuisdk"

    const-string v1, "process modules finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadFinish()V

    .line 208
    :cond_0
    return-void
.end method

.method public static getInstance()Lmiui/module/ModuleManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmiui/module/ModuleManager;->Aw:Lmiui/module/ModuleManager;

    return-object v0
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 190
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successful"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    invoke-interface {v0, p1, p2}, Lmiui/module/ModuleManager$ModuleLoadListener;->onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method private s(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "modules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private t(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/miui/internal/util/PackageConstants;->getSdkBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "modules-temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public varargs loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 79
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v1, Lcom/miui/internal/component/module/BuiltinRepository;

    iget-object v0, p0, Lmiui/module/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/miui/internal/component/module/BuiltinRepository;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v3, Lcom/miui/internal/component/module/PrebuiltRepository;

    iget-object v0, p0, Lmiui/module/ModuleManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/miui/internal/component/module/PrebuiltRepository;-><init>(Landroid/content/Context;)V

    .line 85
    if-nez p1, :cond_3

    .line 86
    new-instance v0, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v4, v10, [Lmiui/module/Repository;

    aput-object v1, v4, v2

    aput-object v3, v4, v11

    invoke-direct {v0, v4}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    .line 91
    :goto_1
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 92
    array-length v4, p2

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, p2, v1

    .line 93
    invoke-direct {p0, v5}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 94
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 88
    :cond_3
    new-instance v0, Lcom/miui/internal/component/module/CombinedRepository;

    new-array v4, v12, [Lmiui/module/Repository;

    aput-object v1, v4, v2

    aput-object v3, v4, v11

    aput-object p1, v4, v10

    invoke-direct {v0, v4}, Lcom/miui/internal/component/module/CombinedRepository;-><init>([Lmiui/module/Repository;)V

    goto :goto_1

    .line 99
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    .line 105
    :goto_3
    array-length v4, p2

    :goto_4
    if-ge v2, v4, :cond_9

    aget-object v5, p2, v2

    .line 106
    const-string v0, "miuisdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loading module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    iget-object v6, p0, Lmiui/module/ModuleManager;->AA:Ljava/io/File;

    iget-object v7, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v6, v7, v0, v5}, Lmiui/module/ModuleManager;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 109
    invoke-direct {p0, v5, v10}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 105
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 102
    :cond_5
    iget-object v1, p0, Lmiui/module/ModuleManager;->AA:Ljava/io/File;

    invoke-virtual {v0, v3}, Lmiui/module/Repository;->contains(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lmiui/module/Repository;->fetch(Ljava/io/File;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 113
    :cond_6
    invoke-direct {p0, v5}, Lmiui/module/ModuleManager;->B(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 116
    :try_start_0
    iget-object v6, p0, Lmiui/module/ModuleManager;->Az:Ljava/io/File;

    invoke-direct {p0, v6, v5}, Lmiui/module/ModuleManager;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 117
    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 120
    :catch_0
    move-exception v6

    .line 121
    invoke-direct {p0, v5, v10}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    .line 124
    :cond_7
    new-instance v6, Lmiui/module/Dependency;

    invoke-direct {v6}, Lmiui/module/Dependency;-><init>()V

    .line 125
    invoke-virtual {v6, v5}, Lmiui/module/Dependency;->setName(Ljava/lang/String;)V

    .line 127
    :try_start_1
    iget-object v7, p0, Lmiui/module/ModuleManager;->AB:Lcom/miui/internal/component/module/ModuleLoader;

    const/4 v8, 0x1

    new-array v8, v8, [Lmiui/module/Dependency;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/miui/internal/component/module/ModuleLoader;->loadModules([Lmiui/module/Dependency;)V
    :try_end_1
    .catch Lcom/miui/internal/component/module/ModuleLoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lmiui/module/ModuleManager;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 128
    :catch_1
    move-exception v0

    .line 129
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 130
    invoke-direct {p0, v5, v11}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 132
    :cond_8
    invoke-direct {p0, v5, v12}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 135
    :catch_2
    move-exception v0

    .line 136
    invoke-direct {p0, v5, v12}, Lmiui/module/ModuleManager;->a(Ljava/lang/String;I)V

    goto :goto_5

    .line 141
    :cond_9
    invoke-direct {p0}, Lmiui/module/ModuleManager;->cf()V

    goto/16 :goto_0
.end method

.method public varargs loadModules([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmiui/module/ModuleManager;->loadModules(Lmiui/module/Repository;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setModuleLoadListener(Lmiui/module/ModuleManager$ModuleLoadListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lmiui/module/ModuleManager;->AH:Lmiui/module/ModuleManager$ModuleLoadListener;

    .line 187
    return-void
.end method
