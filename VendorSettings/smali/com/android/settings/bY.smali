.class Lcom/android/settings/bY;
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
    .line 1973
    iput-object p1, p0, Lcom/android/settings/bY;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/settings/bY;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/iC;->g(Landroid/content/Context;Z)V

    .line 1979
    iget-object v0, p0, Lcom/android/settings/bY;->kD:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->b(Lcom/android/settings/DevelopmentSettings;)V

    .line 1980
    return-void

    .line 1978
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
