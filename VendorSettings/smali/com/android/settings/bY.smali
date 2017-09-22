.class Lcom/android/vendorsettings/bY;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic kD:Lcom/android/vendorsettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/android/vendorsettings/bY;->kD:Lcom/android/vendorsettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/vendorsettings/bY;->kD:Lcom/android/vendorsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/iC;->g(Landroid/content/Context;Z)V

    .line 1979
    iget-object v0, p0, Lcom/android/vendorsettings/bY;->kD:Lcom/android/vendorsettings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DevelopmentSettings;->b(Lcom/android/vendorsettings/DevelopmentSettings;)V

    .line 1980
    return-void

    .line 1978
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
