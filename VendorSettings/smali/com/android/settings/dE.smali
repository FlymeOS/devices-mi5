.class Lcom/android/vendorsettings/dE;
.super Landroid/widget/BaseAdapter;
.source "KeyguardShortcutChooserSettings.java"


# instance fields
.field final synthetic oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;Lcom/android/vendorsettings/dC;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/dE;-><init>(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->a(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->a(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x3f19999a    # 0.6f

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/dE;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/dD;

    .line 86
    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/dG;

    .line 97
    :goto_0
    iget-object v2, v1, Lcom/android/vendorsettings/dG;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/vendorsettings/dD;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v1, v1, Lcom/android/vendorsettings/dG;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/vendorsettings/dD;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :try_start_0
    iget-object v1, v0, Lcom/android/vendorsettings/dD;->oF:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 102
    iget-object v1, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->c(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.xiaomi.smarthome"

    .line 105
    :goto_1
    iget-object v3, v0, Lcom/android/vendorsettings/dD;->oF:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v4}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->d(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->d(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_2
    new-instance v1, Lcom/android/vendorsettings/dF;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/dF;-><init>(Lcom/android/vendorsettings/dE;Lcom/android/vendorsettings/dD;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object p2

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/dE;->oG:Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;->b(Lcom/android/vendorsettings/KeyguardShortcutChooserSettings;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009b

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v2, Lcom/android/vendorsettings/dG;

    invoke-direct {v2, v3}, Lcom/android/vendorsettings/dG;-><init>(Lcom/android/vendorsettings/dC;)V

    .line 92
    const v1, 0x7f130060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/vendorsettings/dG;->icon:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f130061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/vendorsettings/dG;->title:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    .line 102
    :cond_2
    :try_start_1
    const-string v1, "com.android.camera"

    goto :goto_1

    .line 109
    :cond_3
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method
