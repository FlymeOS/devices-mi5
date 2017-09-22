.class Lcom/android/settings/Autostar/a;
.super Ljava/lang/Object;
.source "AutoMangement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bW:Lcom/android/settings/Autostar/AutoMangement;


# direct methods
.method constructor <init>(Lcom/android/settings/Autostar/AutoMangement;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f0c0f17

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 58
    iget-object v1, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v1}, Lcom/android/settings/Autostar/AutoMangement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/miui/AppOpsUtils;->setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lcom/android/settings/Autostar/AutoMangement;->a(Lcom/android/settings/Autostar/AutoMangement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v0}, Lcom/android/settings/Autostar/AutoMangement;->S()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bO:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v1, v7}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v3}, Lcom/android/settings/Autostar/AutoMangement;->a(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v1, v7}, Lcom/android/settings/Autostar/AutoMangement;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v3}, Lcom/android/settings/Autostar/AutoMangement;->a(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v0}, Lcom/android/settings/Autostar/AutoMangement;->a(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bT:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bU:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/Autostar/a;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->bT:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
