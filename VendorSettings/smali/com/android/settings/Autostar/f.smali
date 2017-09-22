.class Lcom/android/settings/Autostar/f;
.super Landroid/preference/Preference;
.source "Autoallow.java"


# instance fields
.field final synthetic bZ:Lcom/android/settings/Autostar/d;

.field bp:Landroid/content/pm/ApplicationInfo;

.field ca:Lcom/android/settings/Autostar/d;

.field cb:Landroid/widget/Button;

.field cc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/Autostar/d;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/d;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/Autostar/f;->bZ:Lcom/android/settings/Autostar/d;

    .line 132
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 133
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/Autostar/f;->setLayoutResource(I)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/android/settings/Autostar/f;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0, p4}, Lcom/android/settings/Autostar/f;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iput-object p5, p0, Lcom/android/settings/Autostar/f;->ca:Lcom/android/settings/Autostar/d;

    .line 137
    iput-object p6, p0, Lcom/android/settings/Autostar/f;->bp:Landroid/content/pm/ApplicationInfo;

    .line 138
    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->bp:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 147
    const v0, 0x7f130044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    .line 148
    const v0, 0x7f130045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/Autostar/f;->cc:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    const v1, 0x7f0c0f1a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/Autostar/f;->bZ:Lcom/android/settings/Autostar/d;

    iget-object v1, v1, Lcom/android/settings/Autostar/d;->bY:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Autostar/f;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cc:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/Autostar/f;->cb:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
