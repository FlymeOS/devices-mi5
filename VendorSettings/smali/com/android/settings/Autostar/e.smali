.class Lcom/android/vendorsettings/Autostar/e;
.super Ljava/lang/Object;
.source "Autoallow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bZ:Lcom/android/vendorsettings/Autostar/d;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/Autostar/d;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/vendorsettings/Autostar/e;->bZ:Lcom/android/vendorsettings/Autostar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/Autostar/f;

    .line 47
    invoke-virtual {v0}, Lcom/android/vendorsettings/Autostar/f;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 48
    iget-object v1, p0, Lcom/android/vendorsettings/Autostar/e;->bZ:Lcom/android/vendorsettings/Autostar/d;

    invoke-virtual {v1}, Lcom/android/vendorsettings/Autostar/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/miui/AppOpsUtils;->setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object v1, p0, Lcom/android/vendorsettings/Autostar/e;->bZ:Lcom/android/vendorsettings/Autostar/d;

    const-string v3, "activity"

    invoke-static {v1, v3}, Lcom/android/vendorsettings/Autostar/d;->a(Lcom/android/vendorsettings/Autostar/d;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 51
    iget-object v1, v0, Lcom/android/vendorsettings/Autostar/f;->cb:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object v0, v0, Lcom/android/vendorsettings/Autostar/f;->cc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    return-void
.end method
