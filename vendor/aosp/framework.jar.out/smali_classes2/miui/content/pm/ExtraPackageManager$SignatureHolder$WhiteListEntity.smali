.class final Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;
.super Ljava/lang/Object;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WhiteListEntity"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field signatures:[Landroid/content/pm/Signature;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->pkgName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;->signatures:[Landroid/content/pm/Signature;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Landroid/content/pm/Signature;Lmiui/content/pm/ExtraPackageManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Landroid/content/pm/Signature;
    .param p3, "x2"    # Lmiui/content/pm/ExtraPackageManager$1;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lmiui/content/pm/ExtraPackageManager$SignatureHolder$WhiteListEntity;-><init>(Ljava/lang/String;[Landroid/content/pm/Signature;)V

    return-void
.end method
