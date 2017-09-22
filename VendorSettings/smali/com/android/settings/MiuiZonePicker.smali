.class public Lcom/android/vendorsettings/MiuiZonePicker;
.super Lcom/android/vendorsettings/ZonePicker;
.source "MiuiZonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vendorsettings/fY;


# static fields
.field private static uE:Ljava/lang/String;

.field private static uF:Ljava/lang/String;


# instance fields
.field private uG:Z

.field private uH:Z

.field private uI:Z

.field private uJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "zone_setup_wizard"

    sput-object v0, Lcom/android/vendorsettings/MiuiZonePicker;->uE:Ljava/lang/String;

    .line 30
    const-string v0, "pick_zone"

    sput-object v0, Lcom/android/vendorsettings/MiuiZonePicker;->uF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/vendorsettings/ZonePicker;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uI:Z

    return-void
.end method


# virtual methods
.method public Y()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ZonePicker;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleAdapter;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiZonePicker;->a(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 139
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    if-ltz v1, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/MiuiZonePicker;->setSelection(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uI:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->finish()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7f130241
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ZonePicker;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/vendorsettings/MiuiZonePicker;->uE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/vendorsettings/MiuiZonePicker;->uF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uH:Z

    .line 42
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_0

    .line 43
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/MiuiZonePicker;->setThemeRes(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_disable_back"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uI:Z

    .line 47
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uJ:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ZonePicker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 52
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_2

    .line 53
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040179

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    new-instance v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 56
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const v0, 0x7f130241

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    const v1, 0x7f130240

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    const v2, 0x7f13023e

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    const v3, 0x7f13023f

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 61
    const v4, 0x7f130242

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 62
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f020260

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    const v1, 0x7f020254

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 67
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uJ:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 71
    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 78
    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v0, Lcom/android/vendorsettings/fE;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fE;-><init>(Lcom/android/vendorsettings/MiuiZonePicker;)V

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f13023c

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0c014d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v5

    .line 93
    :goto_2
    return-object v0

    .line 53
    :cond_0
    const v0, 0x7f04010d

    goto/16 :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 76
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/vendorsettings/ZonePicker;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 118
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    iget-boolean v1, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 121
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uH:Z

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 124
    const-string v2, "extra_timezone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->finish()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/vendorsettings/ZonePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/android/vendorsettings/ZonePicker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/MiuiZonePicker;->uI:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/MiuiZonePicker;->finish()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
