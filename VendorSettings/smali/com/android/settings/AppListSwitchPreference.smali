.class public Lcom/android/settings/AppListSwitchPreference;
.super Lcom/android/settings/AppListPreference;
.source "AppListSwitchPreference.java"


# instance fields
.field private bh:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const v1, 0x7f0d0043

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindView(Landroid/view/View;)V

    .line 28
    const v0, 0x10203a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings/AppListSwitchPreference;->bh:Landroid/widget/Checkable;

    .line 29
    iget-object v1, p0, Lcom/android/settings/AppListSwitchPreference;->bh:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/AppListSwitchPreference;->bh:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings/AppListSwitchPreference;->bh:Landroid/widget/Checkable;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 40
    :cond_2
    const-string v0, "AppListSwitchPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to show dialog with zero entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
