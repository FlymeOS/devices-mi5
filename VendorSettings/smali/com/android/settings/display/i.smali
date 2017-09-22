.class Lcom/android/vendorsettings/display/i;
.super Landroid/widget/BaseAdapter;
.source "FluencyModeListPreference.java"


# instance fields
.field final synthetic Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/FluencyModeListPreference;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/vendorsettings/display/i;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/android/vendorsettings/display/i;->mContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/android/vendorsettings/display/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/i;->mInflater:Landroid/view/LayoutInflater;

    .line 173
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/display/i;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 182
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 187
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/display/i;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->a(Lcom/android/vendorsettings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object p2

    .line 190
    :cond_1
    if-nez p2, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/display/i;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    :cond_2
    const v0, 0x7f130104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 194
    const v1, 0x7f130105

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    iget-object v2, p0, Lcom/android/vendorsettings/display/i;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v2}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->a(Lcom/android/vendorsettings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/display/i;->Yi:Lcom/android/vendorsettings/display/FluencyModeListPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/display/FluencyModeListPreference;->c(Lcom/android/vendorsettings/display/FluencyModeListPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
