.class Lcom/android/settings/Autostar/c;
.super Landroid/preference/Preference;
.source "AutoMangement.java"


# instance fields
.field final synthetic bW:Lcom/android/settings/Autostar/AutoMangement;

.field bX:Lcom/android/settings/Autostar/AutoMangement;

.field bp:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/settings/Autostar/c;->bW:Lcom/android/settings/Autostar/AutoMangement;

    .line 192
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 193
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/c;->setLayoutResource(I)V

    .line 194
    invoke-virtual {p0, p3}, Lcom/android/settings/Autostar/c;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0, p4}, Lcom/android/settings/Autostar/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iput-object p5, p0, Lcom/android/settings/Autostar/c;->bX:Lcom/android/settings/Autostar/AutoMangement;

    .line 197
    iput-object p6, p0, Lcom/android/settings/Autostar/c;->bp:Landroid/content/pm/ApplicationInfo;

    .line 198
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 203
    const v0, 0x7f130044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 204
    iget-object v1, p0, Lcom/android/settings/Autostar/c;->bW:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v1, v1, Lcom/android/settings/Autostar/AutoMangement;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/Autostar/c;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 206
    return-void
.end method
