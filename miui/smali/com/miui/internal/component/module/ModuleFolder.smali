.class public Lcom/miui/internal/component/module/ModuleFolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dn:Ljava/io/File;

.field private do:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->dn:Ljava/io/File;

    .line 16
    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleFolder;->do:Ljava/io/File;

    .line 17
    return-void
.end method


# virtual methods
.method public getApkFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleFolder;->dn:Ljava/io/File;

    return-object v0
.end method

.method public getOptFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleFolder;->do:Ljava/io/File;

    return-object v0
.end method

.method public setApkFolder(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->dn:Ljava/io/File;

    .line 28
    return-void
.end method

.method public setOptFolder(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->do:Ljava/io/File;

    .line 36
    return-void
.end method
