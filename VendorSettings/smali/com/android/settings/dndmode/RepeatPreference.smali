.class public Lcom/android/vendorsettings/dndmode/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# instance fields
.field private aaS:Lcom/android/vendorsettings/dndmode/b;

.field private aaT:Lcom/android/vendorsettings/dndmode/b;

.field private aaU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/vendorsettings/dndmode/b;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/dndmode/b;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    .line 26
    new-instance v0, Lcom/android/vendorsettings/dndmode/b;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/dndmode/b;-><init>(I)V

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaT:Lcom/android/vendorsettings/dndmode/b;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaU:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 40
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, v0, v5

    aput-object v2, v1, v3

    aget-object v2, v0, v6

    aput-object v2, v1, v4

    aget-object v2, v0, v7

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aget-object v2, v0, v2

    aput-object v2, v1, v6

    const/4 v2, 0x6

    aget-object v2, v0, v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aget-object v0, v0, v4

    aput-object v0, v1, v2

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/dndmode/RepeatPreference;)Lcom/android/vendorsettings/dndmode/b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaT:Lcom/android/vendorsettings/dndmode/b;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/dndmode/RepeatPreference;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    return-void
.end method


# virtual methods
.method public b(Lcom/android/vendorsettings/dndmode/b;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/dndmode/b;->a(Lcom/android/vendorsettings/dndmode/b;)V

    .line 147
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaT:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/dndmode/b;->a(Lcom/android/vendorsettings/dndmode/b;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/vendorsettings/dndmode/b;->l(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f1300e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method protected onClick()V
    .locals 6

    .prologue
    .line 86
    .line 87
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/dndmode/n;->by(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v1}, Lcom/android/vendorsettings/dndmode/b;->pR()I

    move-result v3

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a00f1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 101
    const/4 v2, -0x1

    .line 102
    const/4 v1, 0x0

    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 103
    aget v5, v4, v1

    if-ne v3, v5, :cond_3

    .line 109
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/vendorsettings/dndmode/t;

    invoke-direct {v3, p0, v4}, Lcom/android/vendorsettings/dndmode/t;-><init>(Lcom/android/vendorsettings/dndmode/RepeatPreference;[I)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    const v1, 0x7f0a00f0

    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaT:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/b;->a(Lcom/android/vendorsettings/dndmode/b;)V

    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/dndmode/b;->l(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->setLabel(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaT:Lcom/android/vendorsettings/dndmode/b;

    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/dndmode/b;->a(Lcom/android/vendorsettings/dndmode/b;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    invoke-virtual {v1}, Lcom/android/vendorsettings/dndmode/b;->pT()[Z

    move-result-object v1

    new-instance v2, Lcom/android/vendorsettings/dndmode/u;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/dndmode/u;-><init>(Lcom/android/vendorsettings/dndmode/RepeatPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    return-void
.end method

.method public qa()Lcom/android/vendorsettings/dndmode/b;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaS:Lcom/android/vendorsettings/dndmode/b;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaU:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/RepeatPreference;->aaU:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->notifyChanged()V

    .line 63
    :cond_0
    return-void
.end method
