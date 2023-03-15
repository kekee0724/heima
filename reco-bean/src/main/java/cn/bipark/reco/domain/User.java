package cn.bipark.reco.domain;

public class User {
    //columns START
    /**
     * id       db_column: id
     */
    private Long id;
    /**
     * 用户名       db_column: username
     */
    private String username;
    /**
     * 密码       db_column: password
     */
    private String password;
    /**
     * 昵称       db_column: nick
     */
    private String nick;
    /**
     * 邮箱       db_column: email
     */
    private String email;
    /**
     * 手机       db_column: phone
     */
    private String phone;
    /**
     * 团队       db_column: team
     */
    private String team;
    //columns END

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", nick='" + nick + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", team='" + team + '\'' +
                '}';
    }
}
