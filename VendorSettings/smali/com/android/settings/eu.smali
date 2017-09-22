.class Lcom/android/settings/eu;
.super Landroid/widget/ArrayAdapter;
.source "MiuiLocalePicker.java"


# instance fields
.field final synthetic ri:Lcom/android/settings/MiuiLocalePicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiLocalePicker;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/eu;->ri:Lcom/android/settings/MiuiLocalePicker;

    .line 86
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    const v0, 0x7f130123

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/eu;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/eu;->ri:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {v3}, Lcom/android/settings/MiuiLocalePicker;->a(Lcom/android/settings/MiuiLocalePicker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    return-object v2
.end method
