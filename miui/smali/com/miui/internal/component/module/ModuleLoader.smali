.class public Lcom/miui/internal/component/module/ModuleLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/component/module/ModuleLoader$a;
    }
.end annotation


# instance fields
.field private dp:[Lcom/miui/internal/component/module/ModuleFolder;

.field private dq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/miui/internal/component/module/ModuleFolder;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->dq:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->dr:Ljava/util/Set;

    .line 33
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader;->dp:[Lcom/miui/internal/component/module/ModuleFolder;

    .line 34
    return-void
.end method

.method private a(Lcom/miui/internal/component/module/ModuleLoader$a;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 99
    .line 100
    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v0}, Lmiui/module/Module;->getContent()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->dt:Ljava/lang/String;

    .line 104
    :goto_0
    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getContent()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 105
    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->du:Ljava/lang/String;

    .line 108
    :goto_1
    iget-object v4, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v4}, Lmiui/module/Module;->getContent()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 109
    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->dt:Ljava/lang/String;

    .line 113
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_3

    .line 114
    :cond_1
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/internal/component/module/ModuleLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 115
    :goto_2
    if-eqz v0, :cond_4

    iget-boolean v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->dw:Z

    if-nez v2, :cond_4

    .line 116
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encounter error when load dex for module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v3

    .line 114
    goto :goto_2

    :cond_3
    move v0, v3

    .line 119
    :cond_4
    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 120
    invoke-direct {p0, v1}, Lcom/miui/internal/component/module/ModuleLoader;->g(Ljava/lang/String;)V

    .line 121
    if-eqz v0, :cond_5

    iget-boolean v1, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->dw:Z

    if-nez v1, :cond_5

    .line 122
    new-instance v0, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encounter error when load res for module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v2}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/miui/internal/component/module/ModuleLoader;->dr:Ljava/util/Set;

    iget-object v2, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->dt:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    if-nez v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleLoader;->dq:Ljava/util/Set;

    iget-object v1, p1, Lcom/miui/internal/component/module/ModuleLoader$a;->ds:Lmiui/module/Module;

    invoke-virtual {v1}, Lmiui/module/Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_7
    return-void

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-static {p2, p1, p3, v0, v1}, Lcom/miui/internal/component/module/ModuleClassLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)Lmiui/module/Module;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/core/ManifestParser;->createFromArchive(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lmiui/core/ManifestParser;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/core/Manifest;->getModule()Lmiui/module/Module;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/internal/component/module/ModuleLoader;->dr:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public static varargs loadClasses(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 146
    const/4 v3, 0x0

    sget-object v4, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lcom/miui/internal/component/module/ModuleClassLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public static varargs loadResources([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/component/module/ModuleResourceLoader;->load(Ljava/util/List;)V

    .line 152
    return-void
.end method


# virtual methods
.method public varargs loadModules([Lmiui/module/Dependency;)V
    .locals 16

    .prologue
    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    move-object/from16 v0, p1

    array-length v10, v0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v10, :cond_6

    aget-object v11, p1, v7

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/internal/component/module/ModuleLoader;->dq:Ljava/util/Set;

    invoke-virtual {v11}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v11}, Lmiui/module/Dependency;->getType()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    .line 61
    :goto_2
    const/4 v1, 0x0

    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/component/module/ModuleLoader;->dp:[Lcom/miui/internal/component/module/ModuleFolder;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 63
    new-instance v12, Ljava/io/File;

    invoke-virtual {v5}, Lcom/miui/internal/component/module/ModuleFolder;->getApkFolder()Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 65
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v3}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v5}, Lcom/miui/internal/component/module/ModuleFolder;->getOptFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 68
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/internal/component/module/ModuleLoader;->f(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v2

    .line 69
    new-instance v1, Lcom/miui/internal/component/module/ModuleLoader$a;

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/component/module/ModuleLoader$a;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v1, 0x1

    .line 74
    :cond_2
    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    invoke-virtual {v11}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/internal/util/PackageHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Lcom/miui/internal/component/module/ModuleUtils;->getLibraryFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/internal/component/module/ModuleLoader;->f(Ljava/lang/String;)Lmiui/module/Module;

    move-result-object v2

    .line 81
    new-instance v1, Lcom/miui/internal/component/module/ModuleLoader$a;

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/component/module/ModuleLoader$a;-><init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 60
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 62
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 83
    :cond_5
    new-instance v1, Lcom/miui/internal/component/module/ModuleLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such module found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lmiui/module/Dependency;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/internal/component/module/ModuleLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/component/module/ModuleLoader$a;

    .line 89
    iget-object v3, v1, Lcom/miui/internal/component/module/ModuleLoader$a;->dt:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/internal/component/module/ModuleUtils;->isSignatureValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 90
    iget-object v3, v1, Lcom/miui/internal/component/module/ModuleLoader$a;->dv:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/component/module/ModuleLoader;->a(Lcom/miui/internal/component/module/ModuleLoader$a;Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_8
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/component/module/ModuleLoader$a;

    .line 94
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/component/module/ModuleLoader;->a(Lcom/miui/internal/component/module/ModuleLoader$a;Ljava/lang/String;)V

    goto :goto_5

    .line 96
    :cond_9
    return-void
.end method
