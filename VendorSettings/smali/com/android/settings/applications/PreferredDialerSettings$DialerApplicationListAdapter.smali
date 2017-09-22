.class Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferredDialerSettings.java"


# instance fields
.field final synthetic KL:Lcom/android/settings/applications/PreferredDialerSettings;

.field private final KN:Landroid/content/pm/PackageManager;

.field private final KO:Ljava/util/List;

.field private final bx:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PreferredDialerSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KL:Lcom/android/settings/applications/PreferredDialerSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    .line 217
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->bx:Landroid/view/LayoutInflater;

    .line 218
    new-instance v0, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;

    invoke-direct {v0}, Lcom/android/settings/applications/PreferredDialerSettings$DisplayNameComparator;-><init>()V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    iput-object p3, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KO:Ljava/util/List;

    .line 220
    return-void
.end method

.method private av(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 256
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aU(I)Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->aU(I)Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 239
    if-nez p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->bx:Landroid/view/LayoutInflater;

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->aU(I)Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    move-result-object v2

    .line 243
    const v0, 0x7f1301e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 244
    iget-object v1, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->KL:Lcom/android/settings/applications/PreferredDialerSettings;

    invoke-static {v3}, Lcom/android/settings/applications/PreferredDialerSettings;->a(Lcom/android/settings/applications/PreferredDialerSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 245
    const v1, 0x7f130060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 246
    iget-object v3, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->av(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    const v1, 0x7f130054

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 248
    iget-object v2, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->KM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 250
    const v0, 0x7f1300dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    return-object p2
.end method
