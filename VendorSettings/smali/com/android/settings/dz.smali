.class Lcom/android/vendorsettings/dz;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field final synthetic om:Lcom/android/vendorsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/vendorsettings/dz;->om:Lcom/android/vendorsettings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/vendorsettings/dz;->om:Lcom/android/vendorsettings/IccLockSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/IccLockSettings;->c(Lcom/android/vendorsettings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
