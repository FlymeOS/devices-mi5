.class Lcom/android/vendorsettings/hJ;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# instance fields
.field final synthetic As:Lcom/android/vendorsettings/SmsDefaultDialog;

.field private final D:Ljava/util/List;

.field private final aY:I


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/SmsDefaultDialog;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/vendorsettings/hJ;->As:Lcom/android/vendorsettings/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    invoke-direct {p0}, Lcom/android/vendorsettings/hJ;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    .line 160
    invoke-direct {p0}, Lcom/android/vendorsettings/hJ;->hZ()I

    move-result v0

    .line 162
    if-lez v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hK;

    .line 164
    iget-object v2, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 167
    :cond_0
    iput v0, p0, Lcom/android/vendorsettings/hJ;->aY:I

    .line 168
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 7

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->As:Lcom/android/vendorsettings/SmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/vendorsettings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->As:Lcom/android/vendorsettings/SmsDefaultDialog;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 233
    :try_start_0
    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 234
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 235
    if-eqz v4, :cond_0

    .line 236
    new-instance v5, Lcom/android/vendorsettings/hK;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v5, p0, v6, v4, v0}, Lcom/android/vendorsettings/hK;-><init>(Lcom/android/vendorsettings/hJ;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0

    .line 245
    :cond_1
    return-object v2
.end method

.method private hZ()I
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->As:Lcom/android/vendorsettings/SmsDefaultDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hK;

    iget-object v0, v0, Lcom/android/vendorsettings/hK;->At:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_1
    return v1

    .line 255
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public ah(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/hJ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hK;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, v0, Lcom/android/vendorsettings/hK;->At:Ljava/lang/String;

    .line 213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai(I)Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/vendorsettings/hJ;->aY:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/hJ;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hK;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f13002a

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/hJ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hK;

    .line 188
    iget-object v1, p0, Lcom/android/vendorsettings/hJ;->As:Lcom/android/vendorsettings/SmsDefaultDialog;

    invoke-virtual {v1}, Lcom/android/vendorsettings/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 189
    const v2, 0x7f040015

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 190
    const v1, 0x7f130029

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    iget-object v3, v0, Lcom/android/vendorsettings/hK;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget v1, p0, Lcom/android/vendorsettings/hJ;->aY:I

    if-ne p1, v1, :cond_0

    .line 193
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    const v1, 0x7f130028

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 198
    iget-object v0, v0, Lcom/android/vendorsettings/hK;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-object v2

    .line 195
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
