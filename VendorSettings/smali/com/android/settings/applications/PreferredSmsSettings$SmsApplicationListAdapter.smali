.class Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferredSmsSettings.java"


# instance fields
.field private final KN:Landroid/content/pm/PackageManager;

.field final synthetic KY:Lcom/android/vendorsettings/applications/PreferredSmsSettings;

.field private final KZ:Ljava/util/List;

.field private final bx:Landroid/view/LayoutInflater;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/applications/PreferredSmsSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KY:Lcom/android/vendorsettings/applications/PreferredSmsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    .line 162
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->bx:Landroid/view/LayoutInflater;

    .line 164
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 165
    new-instance v0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$DisplayNameComparator;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$DisplayNameComparator;-><init>()V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    :cond_0
    iput-object p3, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KZ:Ljava/util/List;

    .line 168
    return-void
.end method

.method private av(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 206
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KN:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public aW(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aW(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 187
    if-nez p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->bx:Landroid/view/LayoutInflater;

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aW(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 192
    const v0, 0x7f1301e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 193
    iget-object v1, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->KY:Lcom/android/vendorsettings/applications/PreferredSmsSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->a(Lcom/android/vendorsettings/applications/PreferredSmsSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 194
    const v1, 0x7f130060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 195
    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->av(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const v1, 0x7f130054

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 197
    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 200
    const v0, 0x7f1300dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 201
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    return-object p2
.end method
