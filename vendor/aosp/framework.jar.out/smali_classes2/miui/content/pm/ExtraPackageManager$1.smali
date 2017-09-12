.class final Lmiui/content/pm/ExtraPackageManager$1;
.super Landroid/util/Singleton;
.source "ExtraPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/ExtraPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lmiui/content/pm/ExtraPackageManager$SignatureHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lmiui/content/pm/ExtraPackageManager$1;->create()Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    move-result-object v0

    return-object v0
.end method

.method protected create()Lmiui/content/pm/ExtraPackageManager$SignatureHolder;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;

    invoke-direct {v0}, Lmiui/content/pm/ExtraPackageManager$SignatureHolder;-><init>()V

    return-object v0
.end method
