.class Lcom/android/settings/bZ;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic kD:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/android/settings/bZ;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/android/settings/bZ;->kD:Lcom/android/settings/DevelopmentSettings;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/DevelopmentSettings;->a(Lcom/android/settings/DevelopmentSettings;Z)V

    .line 1999
    iget-object v0, p0, Lcom/android/settings/bZ;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->b(Lcom/android/settings/DevelopmentSettings;)V

    .line 2000
    return-void

    .line 1998
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
