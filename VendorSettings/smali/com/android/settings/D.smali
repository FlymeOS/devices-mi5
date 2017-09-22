.class Lcom/android/vendorsettings/D;
.super Ljava/lang/Object;
.source "AppListPreferenceWithSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bg:Lcom/android/vendorsettings/AppListPreferenceWithSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/AppListPreferenceWithSettings;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/vendorsettings/D;->bg:Lcom/android/vendorsettings/AppListPreferenceWithSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/android/vendorsettings/D;->bg:Lcom/android/vendorsettings/AppListPreferenceWithSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->a(Lcom/android/vendorsettings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/android/vendorsettings/D;->bg:Lcom/android/vendorsettings/AppListPreferenceWithSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
