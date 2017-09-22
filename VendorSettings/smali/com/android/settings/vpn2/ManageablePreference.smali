.class public Lcom/android/vendorsettings/vpn2/ManageablePreference;
.super Lmiui/preference/RadioButtonPreference;
.source "ManageablePreference.java"


# instance fields
.field avB:Landroid/view/View$OnClickListener;

.field avG:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p3, p0, Lcom/android/vendorsettings/vpn2/ManageablePreference;->avB:Landroid/view/View$OnClickListener;

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ManageablePreference;->setOrder(I)V

    .line 42
    const v0, 0x7f0400f5

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ManageablePreference;->setWidgetLayoutResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f1301da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/ManageablePreference;->avG:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ManageablePreference;->avG:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/ManageablePreference;->avB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ManageablePreference;->avG:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 51
    return-void
.end method
