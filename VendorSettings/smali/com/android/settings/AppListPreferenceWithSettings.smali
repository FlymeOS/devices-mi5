.class public Lcom/android/vendorsettings/AppListPreferenceWithSettings;
.super Lcom/android/vendorsettings/AppListPreference;
.source "AppListPreferenceWithSettings.java"


# instance fields
.field private be:Landroid/view/View;

.field private bf:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f0400f8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->setWidgetLayoutResource(I)V

    .line 21
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->bf:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->bf:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->bf:Landroid/content/ComponentName;

    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->K()V

    .line 58
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/android/vendorsettings/AppListPreference;->onBindView(Landroid/view/View;)V

    .line 27
    const v0, 0x7f1301c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    new-instance v1, Lcom/android/vendorsettings/D;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/D;-><init>(Lcom/android/vendorsettings/AppListPreferenceWithSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->be:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 40
    invoke-direct {p0}, Lcom/android/vendorsettings/AppListPreferenceWithSettings;->K()V

    .line 41
    return-void
.end method
