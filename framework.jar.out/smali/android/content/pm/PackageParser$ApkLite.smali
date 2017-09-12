.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZ)V
    .locals 13
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "revisionCode"    # I
    .param p6, "installLocation"    # I
    .param p8, "signatures"    # [Landroid/content/pm/Signature;
    .param p9, "coreApp"    # Z
    .param p10, "multiArch"    # Z
    .param p11, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZLjava/util/List;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZLjava/util/List;)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "revisionCode"    # I
    .param p6, "installLocation"    # I
    .param p8, "signatures"    # [Landroid/content/pm/Signature;
    .param p9, "coreApp"    # Z
    .param p10, "multiArch"    # Z
    .param p11, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local p12, "originalPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 340
    iput p4, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 341
    iput p5, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 342
    iput p6, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 343
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/VerifierInfo;

    iput-object v0, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 344
    iput-object p8, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    .line 345
    iput-boolean p9, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 346
    iput-boolean p10, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 347
    iput-boolean p11, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 348
    iput-object p12, p0, Landroid/content/pm/PackageParser$ApkLite;->originalPackages:Ljava/util/List;

    .line 349
    return-void
.end method
